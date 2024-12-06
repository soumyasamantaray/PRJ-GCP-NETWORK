output "load_balancer_ip" {
  description = "The IP address of the load balancer"
  value       = google_compute_forwarding_rule.google_compute_forwarding_rule.ip_address
}

output "load_balancer_name" {
  description = "The name of the load balancer"
  value       = google_compute_forwarding_rule.google_compute_forwarding_rule.name
}

output "backend_service_name" {
  description = "The name of the backend service"
  value       = google_compute_region_backend_service.l4_backend_service.name

}