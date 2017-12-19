# terraform-aws-elb-ssl-negotiation

AWS ELB SSL Negotiation Policy Terraform module
===============================================

Terraform module which creates [SSL Negotiation Configurations for Classic Load Balancers](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-ssl-security-policy.html) on AWS.

These types of resources are supported:

* [AWS Classic ELB SSL Negotiation Policy](https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html)

Features
--------
This module aims to allow the implementation of **ALL** possible combinations of SSL ciphers and protocols which are supported by AWS and latest stable version of Terraform:
* Generic module which allows the setting of any combination of ciphers and protocols.
* Pre-written modules to implement all of the Amazon supplied default policies.
* Allowing the customisation of default policies.

If there is a missing feature or a bug - [open an issue](https://github.com/sidick/terraform-aws-elb-ssl-negotiation/issues/new).

Usage
-----

There are two ways to create security groups using this module:

##### 1. SSL Negotiation Policy with custom rules

```hcl
module "elb_ssl_policy" {
  source = "sidick/elb-ssl-negotiation/aws"

  name        = "default-policy"
  description = "SSL Policy with only TLSv1.2 and ECDHE-RSA-AES128-GCM-SHA256 enabled and server defined order set"
  ssl_policy_name = "default_policy"
  load_balancer_id = "example_lb"
  load_balancer_port = "443"

  protocol_tlsv12 = "true"
  ecdhe_rsa_aes128_gcm_sha256 = "true"
  server_defined_cipher_order = "true"

}
```


##### 2. SSL Negotiation Policy with pre-defined rules but with use of TLSv1 overridden and disabled

```hcl
module "elb_ssl_policy" {
  source = "sidick/elb-ssl-negotiation/aws//modules/ELBSecurityPolicy-2016-08"

  name        = "default-policy"
  description = "SSL Policy with only TLSv1.2 and ECDHE-RSA-AES128-GCM-SHA256 enabled and server defined order set"
  ssl_policy_name = "default_policy"
  load_balancer_id = "example_lb"
  load_balancer_port = "443"

  protocol_tlsv1 = "false"
}
```


Examples
--------

To be added

How to update the ciphers and protocols
---------------------------------------

The lists of all the protocols and ciphers are created dynamically using a python script in the `examples/update_ciphers` directory. If you run this script it will recreate all modules from the Jinja2 templates in that directory based on the output of `aws describe-load-balancer-policies`

Authors
-------

Module managed by [Simon Dick](https://github.com/sidick).

License
-------

BSD 3-Clause License. See LICENSE for full details.
