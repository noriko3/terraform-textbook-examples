terraform {
  required_version = ">= 1.7"
  required_providers {
    google = {
      version = "~> 5.0"
    }
  }
}
provider "google" {
  # 自分のプロジェクト名を指定します
  project = "Terraform-project"
  region  = "us-west1"
  zone    = "us-west1-c"
}
