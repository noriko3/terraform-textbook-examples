data "google_project" "Terraform_project" {
  project_id = var.project_id
}

resource "google_storage_bucket" "static-site" {
  name     = var.bucket_name
  project  = data.google_project.Terraform_project.project_id
  location = var.location

  force_destroy = true

  public_access_prevention = "enforced"
}
