
#Copyrights 


resource "google_compute_global_address" "l4-lb-p-global-address" {
  name = "l4-lb-p-global-address"
}

resource "google_compute_backend_service" "l4-lb-p-backend-service" {
  name                          = "l4-lb-p-backend-service"
  load_balancing_scheme         = "EXTERNAL"
  protocol                      = "HTTP"
  port_name                     = "http"
  timeout_sec                   = 10

  backend {
    group                       = google_compute_instance_group.l4-lb-p-instance-group.self_link
  }

  health_checks                 = [google_compute_health_check.l4-lb-p-health-check.self_link]
}

resource "google_compute_health_check" "l4-lb-p-health-check" {
  name                          = "l4-lb-p-health-check"

  http_health_check {
    request_path                = "/"
    port                        = 80
  }
}

resource "google_compute_url_map" "l4-lb-p-url-map" {
  name                          = "l4-lb-p-url-map"
  default_service               = google_compute_backend_service.l4-lb-p-backend-service.self_link
}

resource "google_compute_target_http_proxy" "l4-lb-p-http-proxy" {
  name    = "l4-lb-p-http-proxy"
  url_map = google_compute_url_map.l4-lb-p-url-map.self_link
}

resource "google_compute_global_forwarding_rule" "l4-lb-p-forwarding-rule" {
  name       = "l4-lb-p-forwarding-rule"
  ip_address = google_compute_global_address.l4-lb-p-global-address.address
  ip_protocol = "TCP"
  port_range = "80"
  target     = google_compute_target_http_proxy.l4-lb-p-http-proxy.self_link
}

resource "google_compute_instance_group" "l4-lb-p-instance-group" {
  name        = "l4-lb-p-instance-group"
  zone        = var.vm_zone
  instances   = [google_compute_instance.l4-lb-p-instance.self_link]
  named_port {
    name = "http"
    port = 80
  }
}

resource "google_compute_instance" "l4-lb-p-instance" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network    = var.network_name
    subnetwork = var.subnet_name
    access_config {
      // Ephemeral IP
    }
  }

  tags = var.vm_tags
}