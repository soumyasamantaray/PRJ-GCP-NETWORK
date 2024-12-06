resource "google_compute_firewall" "prj-vpc-qa1-allow-ssh" {
  name = var.firewall_name
  network = google_compute_network.prj-vpc-qa1.id
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = var.source_ranges
  
}