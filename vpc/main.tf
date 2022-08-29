module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = local.name
  cidr = var.vpc_cidr

  azs             = local.availability_zones
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  tags = var.tags

}
