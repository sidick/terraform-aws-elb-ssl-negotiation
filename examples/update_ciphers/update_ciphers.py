#!/usr/bin/env python
""" Recreate Terraform code based on the AWS SSL policies """

import sys
import os
import json
import sh
import jinja2


def clean_attribute_name(attribute_name):
    """ Return the sanitised attribute name to use as parameter name """

    new_name = attribute_name.lower()
    new_name = ''.join(ch for ch in new_name if (ch.isalnum() or ch == '-'))
    new_name = new_name.replace('-', '_')
    return new_name


def create_main_variable_file(ciphers):
    """ Return the top level variables.tf """

    attribute_list = []
    attributes_seen = dict()

    for policy in ciphers['PolicyDescriptions']:
        for attribute in policy['PolicyAttributeDescriptions']:
            if attribute['AttributeName'] not in attributes_seen.keys():
                attributes_seen[attribute['AttributeName']] = 1
                attribute_list.append({
                    "clean_cipher_name": clean_attribute_name(
                        attribute['AttributeName']
                    ),
                    "cipher": attribute['AttributeName'],
                    "default": attribute['AttributeValue']
                    })

    with open('variables.tf.j2', 'r') as j2template:
        template_file = ''.join(j2template.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list,
        top_variables=1
    )


def create_module_variable_file(policy):
    """ Return variables.tf for a sub-module """
    attribute_list = []
    attributes_seen = dict()

    for attribute in policy['PolicyAttributeDescriptions']:
        if attribute['AttributeName'] not in attributes_seen.keys():
            attributes_seen[attribute['AttributeName']] = 1
            attribute_list.append({
                "clean_cipher_name": clean_attribute_name(
                    attribute['AttributeName']
                ),
                "cipher": attribute['AttributeName'],
                "default": attribute['AttributeValue']
                })

    with open('variables.tf.j2', 'r') as j2template:
        template_file = ''.join(j2template.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list
    )


def create_module_output_file():
    """ Return outputs.tf file for sub-module """

    with open('module_outputs.tf.j2', 'r') as j2template:
        template_file = ''.join(j2template.readlines())
    template = jinja2.Template(template_file)
    return template.render()


def create_main_tf(ciphers):
    """ Return top level main.tf file from template """

    attribute_list = []
    attributes_seen = dict()

    for policy in ciphers['PolicyDescriptions']:
        for attribute in policy['PolicyAttributeDescriptions']:
            if attribute['AttributeName'] not in attributes_seen.keys():
                attributes_seen[attribute['AttributeName']] = 1
                attribute_list.append({
                    "clean_cipher_name": clean_attribute_name(
                        attribute['AttributeName']
                    ),
                    "cipher": attribute['AttributeName']
                    })

    with open('main.tf.j2', 'r') as j2template:
        template_file = ''.join(j2template.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list
    )


def create_module_main_file(policy):
    """ Return main.tf file for sub-module """

    attribute_list = []
    attributes_seen = dict()

    for attribute in policy['PolicyAttributeDescriptions']:
        if attribute['AttributeName'] not in attributes_seen.keys():
            attributes_seen[attribute['AttributeName']] = 1
            attribute_list.append({
                "clean_cipher_name": clean_attribute_name(
                    attribute['AttributeName']
                ),
                "cipher": attribute['AttributeName'],
                "default": attribute['AttributeValue']
                })

    with open('module_main.tf.j2', 'r') as j2template:
        template_file = ''.join(j2template.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list
    )


def create_module_readme(policy):
    """ Return README.md file for sub-module """

    with open('README.md.j2', 'r') as j2template:
        template_file = ''.join(j2template.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        module_name=policy['PolicyName']
    )


def create_module(policy):
    """ Create a new sub-module based on provided policy """

    path = "../../modules/%s" % (policy['PolicyName'])

    # Make sure directory exists
    if not os.path.isdir(path):
        os.mkdir(path)

    variable_file = create_module_variable_file(policy)
    with open("%s/variables.tf" % (path), "w") as output_file:
        output_file.write(variable_file)

    outputs_file = create_module_output_file()
    with open("%s/outputs.tf" % (path), "w") as output_file:
        output_file.write(outputs_file)

    outputs_file = create_module_main_file(policy)
    with open("%s/main.tf" % (path), "w") as output_file:
        output_file.write(outputs_file)

    outputs_file = create_module_readme(policy)
    with open("%s/README.md" % (path), "w") as output_file:
        output_file.write(outputs_file)

    sh.terraform('fmt', _cwd=path)


def main():
    """ Main function """

    # Change to script directory
    script_path = os.path.dirname(os.path.realpath(__file__))
    os.chdir(script_path)

    # Read in json
    policy_list = json.loads(
        str(
            sh.aws.elb('describe-load-balancer-policies', '--output=json')
        )
    )

    # Create top level variables file
    main_variables_file = create_main_variable_file(policy_list)

    # Write out top level variables file
    with open("../../variables.tf", "w") as v_file:
        v_file.write(main_variables_file)

    # Create top level main.tf file
    main_tf_file = create_main_tf(policy_list)

    # Write out top level variables file
    with open("../../main.tf", "w") as v_file:
        v_file.write(main_tf_file)

    for policy in policy_list['PolicyDescriptions']:
        create_module(policy)

    return 0


if __name__ == "__main__":
    sys.exit(main())
