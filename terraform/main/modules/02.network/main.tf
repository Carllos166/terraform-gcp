resource "google_compute_network" "vpc_network" {
  project                 = var.gcp_project_id
  name                    = var.network
  auto_create_subnetworks = true
  mtu                     = 1460
}

data "google_compute_subnetwork" "default" {
  count  = length(google_compute_network.vpc_network.subnetworks)
  name   = element(google_compute_network.vpc_network.subnetworks, count.index)
  region = var.region
}
