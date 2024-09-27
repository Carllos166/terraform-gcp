output "instance_name" {
  value = google_compute_instance.vm_instance.name
}

output " machine_type" {
  value = google_compute_instance.vm_instance.machine_type
}

output "zone" {
  value = google_compute_instance.vm_instance.zone
}

output "image" {
  value = google_compute_instance.vm_instance.image
}

output "network" {
  value = google_compute_instance.vm_instance.network
}

