resource "google_compute_network" "vpc_network" {
  project                 = var.gcp_project_id
  name                    = var.gcp_network_name
  auto_create_subnetworks = true
  mtu                     = 1460
}