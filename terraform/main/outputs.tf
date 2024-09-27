output "instance_name" {
  value = module.compute_instance.vm_instance.name
}

output "instance_zone" {
  value = module.compute_instance.vm_instance.zone
}

output "instance_machine_type" {
  value = module.compute_instance.vm_instance.machine_type
}

output "instance_network" {
  value = module.compute_instance.vm_instance.network_interface[0].network
}

output "instance_ip" {
  value = module.compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}