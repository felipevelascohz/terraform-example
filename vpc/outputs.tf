output "vpc_id" {
    description = "id de la vpc"
    value = module.vpc.vpc_id
  
}

output "public_subnets" {
    description = "lista de subnets publicas"
    value = module.vpc.public_subnets
}

output "private_subnets" {
    description = "lista de subnets privadas"
    value = module.vpc.private_subnets
}

output "vpc_cidr" {
    description = "CIDR de la VPC"
    value = module.vpc.vpc_cidr_block
  
}