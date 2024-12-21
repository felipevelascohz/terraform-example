// Se cargan tfstates remotos
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "felipevelascohz-tfstate"
    key    = "vpc/vpc.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "sg" {
  backend = "s3"
  config = {
    bucket = "felipevelascohz-tfstate"
    key    = "security-groups/security-groups.tfstate"
    region = "us-east-1"
  }
}

module "endpoints" {
  source = "terraform-aws-modules/vpc/aws//modules/vpc-endpoints"
  version = "5.0.0"

  vpc_id             = data.terraform_remote_state.vpc.outputs.vpc_id
  security_group_ids = [data.terraform_remote_state.sg.outputs.allow_https_id]

  endpoints = {
    execute-api = {
      service             = "execute-api"
      private_dns_enabled = true
      subnet_ids          = data.terraform_remote_state.vpc.outputs.private_subnets
      tags                = { Name = "execute-api-vpc-endpoint" }
    }
  }
  tags = local.tags_as_map
}