# Copyright (c) 2024, All rights reserved

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.12.0"
    }
}
  
}

provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.credentials
}
