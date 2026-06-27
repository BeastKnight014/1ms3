resource "aws_instance" "terra_instance" {
  ami                    = var.ami_id
  instance_type          = "t3.small"
  subnet_id              = aws_subnet.public_subnet[0].id
  vpc_security_group_ids = [aws_security_group.public_sg.id]

  tags = {
    Name = "terra_instance"
  }
}
