variable cidr {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR de la VPC"
}

variable public_subnets {
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  description = "lista de subnets publicas"
}

variable "private_subnets" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    description = "lista de subnets privadas"
}
