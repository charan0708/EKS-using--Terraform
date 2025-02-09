provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  
}


module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.18.1"

  name = "eks-terraform"
  cidr = var.cidr
  azs = data.aws_availability_zones.available.names
  enable_dns_support = true
  enable_dns_hostnames = true
  enable_nat_gateway = true
  single_nat_gateway = true
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.4.0/24", "10.0.5.0/24"]
}