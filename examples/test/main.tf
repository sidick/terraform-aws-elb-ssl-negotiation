provider "aws" {
  region = "eu-west-1"
}

module "ssl_policy" {
  source = "../../modules/ELBSecurityPolicy-TLS-1-2-2017-01"

  ssl_policy_name    = "foo-policy"
  load_balancer_id   = "simontest-lb"
  load_balancer_port = "443"
}
