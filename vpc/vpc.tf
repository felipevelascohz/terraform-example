module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"
  name = "${var.project_name}-vpc"
  cidr = var.cidr
  azs             = ["${var.region}a", "${var.region}b", "${var.region}c"]
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  enable_nat_gateway = false
  enable_vpn_gateway = false
  create_igw = false
  map_public_ip_on_launch = false
  tags = local.tags_as_map
}