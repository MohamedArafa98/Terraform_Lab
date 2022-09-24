#Associate Route Table with public subnet

resource "aws_main_route_table_association" "pub-associate-tf" {
  vpc_id         = aws_vpc.tf-lab.id
  route_table_id = aws_route_table.for-public-tf.id
}

#Associate Route Table with private subnet

resource "aws_main_route_table_association" "priv_associate-tf" {
  vpc_id         = aws_vpc.tf-lab.id
  route_table_id = aws_route_table.for-private-tf.id
}