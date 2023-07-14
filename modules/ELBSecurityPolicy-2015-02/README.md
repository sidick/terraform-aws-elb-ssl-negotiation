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
* Allowing the customisation of default policies.

This module implements the AWS default of ELBSecurityPolicy-2015-02

This module is designed to work with Terraform 1.0 or higher, for earlier versions of Terraform please use a 0.3.x version of the module.

If there is a missing feature or a bug - [open an issue](https://github.com/sidick/terraform-aws-elb-ssl-negotiation/issues/new).

Due to me not using this module anymore this is likely to be the last update unless any issues are found.

Usage
-----

```hcl
module "elb_ssl_policy" {
  source = "sidick/elb-ssl-negotiation/aws//modules/ELBSecurityPolicy-2015-02"

  ssl_policy_name    = "default_policy"
  load_balancer_id   = "example_lb"
  load_balancer_port = "443"

  protocol_tlsv1 = "false"
}
```


Authors
-------

Module managed by [Simon Dick](https://github.com/sidick).

License
-------

BSD 3-Clause License. See LICENSE for full details.