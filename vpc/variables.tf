variable "application" {
  type        = string
  description = "Name of the application"
}

variable "tags" {
  type        = map(string)
  description = "The provided tag values"
}

variable "environment" {
  type        = string
  description = "Name of the envirnment e.g dev/test"
}

variable "vpc_cidr" {

}

variable "public_subnets" {
  type    = list(string)
  default = []
}
