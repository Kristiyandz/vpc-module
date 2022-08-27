module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = local.name
  cidr = var.vpc_cidr

}

/*
  TODO:
  Make the hard coded values inputs
  Consume into another project
*/
