locals {

  name = "${var.application}-${var.environment}"
  tags = var.tags

  availability_zones = [for availability in data.aws_availability_zones.available : availability.name]

}

data "aws_availability_zones" "available" {
  for_each = data.aws_availability_zones.available
  name     = each.value
}

