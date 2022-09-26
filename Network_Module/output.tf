output "vpc_id" {
  value = aws_vpc.tf-lab.id
}

output "publicsubnet" {
  value = aws_subnet.public-tf
}
# output "ITI_public_subnet2" {
#   value = aws_subnet.ITI_public_subnet2
# }
output "privatesubnet" {
  value = aws_subnet.private-tf
}
# output "ITI_private_subnet2" {
#   value = aws_subnet.ITI_private_subnet2
# }