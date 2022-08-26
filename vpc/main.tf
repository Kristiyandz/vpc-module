module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = "kris-main-vpc"
  cidr = "10.0.0.0/16"

}
