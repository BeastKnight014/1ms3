variable "region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnet" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "ami_id" {
  type = string
}
