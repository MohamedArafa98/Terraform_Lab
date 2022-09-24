resource "aws_internet_gateway" "IGW-tf" {
  vpc_id = aws_vpc.tf-lab.id

  tags = {
    Name = "IGW-tf"
  }
}