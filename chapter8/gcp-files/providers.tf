terraform {
  required_version = ">= 1.7"
  required_providers {
    google = {
      version = "~> 5.0"
    }
  }
}
provider "google" {
  project = var.project_name
  region  = var.gcp_region
  zone    = var.zone
}
