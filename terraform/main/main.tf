module "iam" {
  source         = "./modules/01.IAM"
  gcp_project_id = var.gcp_project_id
  roles        = var.roles
}

module "network" {
  source         = "./modules/02.network"
  gcp_project_id = var.gcp_project_id
  network        = var.network
  region         = var.gcp_region
}

module "vm" {
  source        = "./modules/03.vm"
  instance_name = var.instance_name
  machine_type  = var.machine_type
  zone          = var.zone
  image         = var.image
  network       = module.network.network
  subnet       = module.network.subnet

}

