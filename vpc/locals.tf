locals {

  name = "${var.application}-${var.environment}"
  tags = var.tags

  availability_zones = [for availability in data.aws_availability_zone.available : availability.name]

}

data "aws_availability_zones" "available" {}

data "aws_availability_zone" "available" {
  for_each = toset(data.aws_availability_zones.available.names)
  name     = each.value
}

