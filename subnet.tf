resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet)

  vpc_id                  = aws_vpc.public_vpc.id
  cidr_block              = var.public_subnet[count.index]
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zones[count.index]

  tags = {
    Name = "public_subnet-${count.index + 1}"
  }
}
