module "network" {
  source = "../../modules/network"
  subnet_name = "module-subnet"
  vpc_name = "module-vpc"
  env = var.env
}

module "instance" {
  source = "../../modules/instance"
  ec2_name = var.ec2_name
  subnet_id = module.network.subnet_id
  env = var.env
}
