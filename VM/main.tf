# copyright 2024 by the author

resource "google_compute_instance" "prj-vm-qa" {
  name = var.vm_name
  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }
  machine_type = var.vm_machine_type
  zone         = var.vm_zone
  tags         = ["qa"]
  # metadata = {
  #   env = var.env
  # }
  network_interface {
    network = var.network_name
    subnetwork = var.subnet
    access_config {
    }
  }
}
