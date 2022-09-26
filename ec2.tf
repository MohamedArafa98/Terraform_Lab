resource "aws_instance" "bastion" {
  ami           = "ami-026b57f3c383c2eec" # us-east-1
  instance_type = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id]
  subnet_id = module.Network_Module.publicsubnet.id
  key_name = "ssh-client1"
  tags = {
    Name = "bastion"
  }
}

resource "aws_instance" "application" {
  ami           = "ami-026b57f3c383c2eec" # us-east-1
  instance_type = "t2.micro"
  associate_public_ip_address = false
  vpc_security_group_ids = [ aws_security_group.allow_http_ssh.id]
  subnet_id = module.Network_Module.privatesubnet.id
  key_name = "ssh-client2"
  tags = {
    Name = "application"
  }
}