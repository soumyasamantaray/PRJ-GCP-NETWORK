# Copyrights @ 2024

resource "google_compute_network" "prj-vpc-qa1" {
  name = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "prj-vpc-qa1-subent1" {
  name = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region = var.region
  network = google_compute_network.prj-vpc-qa1.id
}

