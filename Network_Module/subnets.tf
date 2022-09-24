#Public Subnet
resource "aws_subnet" "public-tf" {
  vpc_id     = aws_vpc.tf-lab.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = "public-tf"
  }
}

#Private Subent
resource "aws_subnet" "private-tf" {
  vpc_id     = aws_vpc.tf-lab.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = "private-tf"
  }
}