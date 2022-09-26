module "Network_Module" {
source = "./Network_Module"
vpc_cidr = var.vpc_cidr
region = var.region
public_subnet_cidr = var.public_subnet_cidr
private_subnet_cidr = var.private_subnet_cidr
vpcid = var.vpcid 
}
