data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "felipevelascohz-tfstate"
    key    = "vpc/vpc.tfstate"
    region = "us-east-1"
  }
}


module "Allow_HTTPS" {
  source = "terraform-aws-modules/security-group/aws"
  version = "5.0.0"

  name        = var.security_group_name
  description = "Security group para acceder a los endpoints desde dentro de la vpc"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress_cidr_blocks      = [data.terraform_remote_state.vpc.outputs.vpc_cidr]
  ingress_rules            = ["https-443-tcp"]
  egress_cidr_blocks       = ["0.0.0.0/0"]
  egress_rules             = ["all-all"]
}
