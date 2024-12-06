output "vm_name" {
  description = "The name of the VM"
  value       = google_compute_instance.prj-vm-qa.id
}

output "vm_self_link" {
  description = "The self link of the VM"
  value       = google_compute_instance.prj-vm-qa.id
}

# output "vm_network_interface" {
#    description = "The network interface of the VM"
#    value       = google_compute_instance.vm_instance.network_interface[0].id
# }

# output "vm_external_ip" {
#   description = "The external IP address of the VM"
#   value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
# }