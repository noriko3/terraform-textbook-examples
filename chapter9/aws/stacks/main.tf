module "vpc" {
  source                           = "github.com/noriko3/terraform-textbook-examples.git//chapter9/aws/modules/vpc-subnet?ref=v3.0.0"
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block
  vpc_name                         = var.vpc_name
  custom_tags                      = var.custom_tags
  subnet_cidr                      = var.subnet_cidr
  subnet_name                      = var.subnet_name
}
module "s3" {
  source              = "github.com/noriko3/terraform-textbook-examples.git//chapter9/aws/modules/s3?ref=v3.0.0"
  create_bucket       = var.create_bucket
  bucket_name         = var.bucket_name
  force_destroy       = var.force_destroy
  acceleration_status = var.acceleration_status
  custom_tags         = var.custom_tags
  depends_on          = [module.vpc.id]
}
