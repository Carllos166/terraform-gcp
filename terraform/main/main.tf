module "network" {
  source = "./modules/network"
  gcp_project_id = var.gcp_project_id
  network = var.network
  
}

module "vm" {
  source        = "./modules/vm"
  instance_name = var.instance_name
  machine_type  = var.machine_type
  zone          = var.zone
  image         = var.image
  network       = var.network
  subnetwork    = var.subnets
}
