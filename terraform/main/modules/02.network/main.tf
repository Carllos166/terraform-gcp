resource "google_compute_network" "vpc_network" {
  project                 = var.gcp_project_id
  name                    = var.network
  auto_create_subnetworks = true
  mtu                     = 1460
}

data "google_compute_subnetwork" "default" {
  for_each = {
    for s in google_compute_subnetwork.all_subnetworks.subnetworks : s.name => s
    if s.network == google_compute_network.vpc_network.self_link
  }
  name   = each.value.name
  region = each.value.region
}

data "google_compute_subnetwork" "all_subnetworks" {
  project = var.gcp_project_id
}