module "vpc" {
  source = "./vpc"

  application = "local-module"
  environment = "dev"
  aws_region  = "eu-west-2"

  vpc_cidr = "10.0.0.0/16"

  create_default_sg = false

  tags = {
    Application = "Simple Test Application"
    Envirnment  = "dev"
    Owner       = "Kris Dzhakov"
    Project     = "Simple App Project"
    Team        = "Kris team"
  }
}
