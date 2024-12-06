# output "network_name" {
#   description = "The name of the VPC network"
#   value       = google_compute_network.prj
# }

# output "subnet_names" {
#   description = "The names of the subnets"
#   value       = google_compute_subnetwork.subnets[*].name
# }

# output "subnet_cidrs" {
#   description = "The CIDR ranges of the subnets"
#   value       = google_compute_subnetwork.subnets[*].ip_cidr_range
# }