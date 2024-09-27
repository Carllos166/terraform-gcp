output "instance_name" {
  value = google_compute_instance.vm_instance.name
}

output "instance_zone" {
  value = google_compute_instance.vm_instance.zone
}

output "instance_machine_type" {
  value = google_compute_instance.vm_instance.machine_type
}

output "instance_network" {
  value = google_compute_instance.vm_instance.network_interface[0].network
}

output "instance_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

