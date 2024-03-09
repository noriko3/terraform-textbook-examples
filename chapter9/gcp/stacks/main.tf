module "vpc" {
  source                          = "github.com/noriko3/terraform-textbook-examples.git//chapter9/gcp/modules/vpc?ref=v3.0.0"
  vpc_name                        = var.vpc_name
  vpc_mtu                         = var.vpc_mtu
  vpc_description                 = var.vpc_description
  vpc_routing_mode                = var.vpc_routing_mode
  project_id                      = var.project_id
  delete_default_routes_on_create = var.delete_default_routes_on_create
  auto_create_subnetworks         = var.auto_create_subnetworks
}
module "subnet" {
  source           = "github.com/noriko3/terraform-textbook-examples.git//chapter9/gcp/modules/subnet?ref=v3.0.0"
  project_id       = var.project_id
  vpc_name         = var.vpc_name
  subnets          = var.subnets
  secondary_ranges = var.secondary_ranges
  depends_on       = [module.vpc.id]
}
module "routes" {
  source     = "github.com/noriko3/terraform-textbook-examples.git//chapter9/gcp/modules/route?ref=v3.0.0"
  project_id = var.project_id
  vpc_name   = var.vpc_name
  routes     = var.routes
  depends_on = [module.vpc.id]
}
module "storage" {
  source        = "github.com/noriko3/terraform-textbook-examples.git//chapter9/gcp/modules/storage?ref=v3.0.0"
  stg_name      = var.stg_name
  location      = var.location
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  project_id    = var.project_id
  labels        = var.labels
}
