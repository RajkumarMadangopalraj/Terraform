resource "aws_vpc" "MyfirstVPC" {
  cidr_block       = "172.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "MyfirstVPC"
  }
}
