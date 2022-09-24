#Route Table for public subnet

resource "aws_route_table" "for-public-tf" {
  vpc_id = aws_vpc.tf-lab.id

  route = [

  ]

  tags = {
    Name = "for-public-tf"
  }
}
#Routes for public route table
resource "aws_route" "public_route" {

    route_table_id = aws_route_table.for-public-tf.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW-tf.id

}

#Route Table for private subnet

resource "aws_route_table" "for-private-tf" {
  vpc_id = aws_vpc.tf-lab.id
  route = [
    
  ]

  tags = {
    Name = "for-private-tf"
  }
}
#Routes for private route table
resource "aws_route" "private_route" {

    route_table_id = aws_route_table.for-private-tf.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.pub-nat-tf.id

}