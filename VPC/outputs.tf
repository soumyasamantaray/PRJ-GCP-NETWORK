output "vpc_id" {
  description = "The ID of the VPC"
  value       = google_compute_network.prj-vpc-qa1.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = google_compute_subnetwork.prj-vpc-qa1-subent1.id
}

output "vpc_self_link" {
  description = "The self link of the VPC"
  value       = google_compute_network.prj-vpc-qa1.id
}

output "network_name" {
  description = "The name of the VPC network"
  value       = google_compute_network.prj-vpc-qa1.id
  
}