output "network" {
  value = google_compute_network.vpc_network.self_link
}

#output "subnet" {
#  value = data.google_compute_subnetwork.default[0].name
#}
