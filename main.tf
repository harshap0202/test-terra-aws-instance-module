# provider "aws" {
#   region = "ap-south-1"
# }

module "vpc" {
  source      = "./vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source              = "./sg"
  security_group_name = var.security_group_name
  ssh_cidr            = var.ssh_cidr
  http_cidr           = var.http_cidr
  vpc_id = module.vpc.vpc_id
}

module "instance" {
  source        = "./instance"
  instance_name = var.instance_name
  ami           = var.ami
  instance_type = var.instance_type
  ssh_key       = var.ssh_key
  subnet_id = module.vpc.subnet_id
  security_groups = module.sg.security_groups
}


