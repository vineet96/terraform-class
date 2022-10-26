module "network" {
    source = "../../../modules/network"
    project = var.project
    vpc_name = var.vpc_name
    subnets = var.subnets
    firewalls = var.firewalls
  
}