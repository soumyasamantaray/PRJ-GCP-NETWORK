# Copyright 2024 Google LLC

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.bucket_location
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      age = 365
    }
  }
}