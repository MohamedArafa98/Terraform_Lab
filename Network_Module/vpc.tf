resource "aws_vpc" "tf-lab" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "tf-lab"
  }
}