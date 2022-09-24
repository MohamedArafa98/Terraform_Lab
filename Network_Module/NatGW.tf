resource "aws_nat_gateway" "pub-nat-tf" {
    connectivity_type = "public"
  allocation_id = aws_eip.eip-tf.id
  subnet_id     = aws_subnet.public-tf.id

  tags = {
    Name = "pub-nat-tf"
  }
}