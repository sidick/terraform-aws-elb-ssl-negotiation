#!/usr/bin/env python

import sys
import os
import sh
import json
import jinja2


def clean_attribute_name(attribute_name):
    new_name = attribute_name.lower()
    new_name = ''.join(ch for ch in new_name if (ch.isalnum() or ch == '-'))
    new_name = new_name.replace('-', '_')
    return new_name


def create_main_variable_file(ciphers):
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

    with open('variables.tf.j2', 'r') as j2:
        template_file = ''.join(j2.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list,
        top_variables=1
    )


def create_module_variable_file(policy):
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

    with open('variables.tf.j2', 'r') as j2:
        template_file = ''.join(j2.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list
    )


def create_module_output_file(policy):
    with open('module_outputs.tf.j2', 'r') as j2:
        template_file = ''.join(j2.readlines())
    template = jinja2.Template(template_file)
    return template.render()


def create_main_tf(ciphers):
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

    with open('main.tf.j2', 'r') as j2:
        template_file = ''.join(j2.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list
    )


def create_module_main_file(policy):
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

    with open('module_main.tf.j2', 'r') as j2:
        template_file = ''.join(j2.readlines())

    template = jinja2.Template(template_file)
    return template.render(
        ciphers=attribute_list
    )


def create_module(policy):
    path = "../../modules/%s" % (policy['PolicyName'])

    # Make sure directory exists
    if not os.path.isdir(path):
        os.mkdir(path)

    variable_file = create_module_variable_file(policy)
    with open("%s/variables.tf" % (path), "w") as v:
        v.write(variable_file)

    outputs_file = create_module_output_file(policy)
    with open("%s/outputs.tf" % (path), "w") as v:
        v.write(outputs_file)

    outputs_file = create_module_main_file(policy)
    with open("%s/main.tf" % (path), "w") as v:
        v.write(outputs_file)


def main():

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


if __name__ == "__main__":
    sys.exit(main())
