resource "aws_vpc" "public_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "public_vpc"
  }
}
