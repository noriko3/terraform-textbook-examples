locals {
  # 作成したサービスアカウントを記載します
  terraform_service_account = "terraform-gcp-account@terraform-project-410515.iam.gserviceaccount.com"

  # プロジェクト名を指定します
  project = "Terraform-project"

  # regionを指定します
  region = "asia-northeast1"
}
terraform {
  required_version = ">= 1.7"
  required_providers {
    google = {
      version = "~> 5.0"
    }
  }
}

provider "google" {
  alias = "impersonation"
  scopes = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/userinfo.email",
  ]
  project = local.project
  region  = local.region
}

data "google_service_account_access_token" "default" {
  provider               = google.impersonation
  target_service_account = local.terraform_service_account
  scopes                 = ["userinfo-email", "cloud-platform"]
  lifetime               = "1200s"
}

provider "google" {
  project         = local.project
  region          = local.region
  access_token    = data.google_service_account_access_token.default.access_token
  request_timeout = "60s"
}
