module "azure_stacks" {
  source                   = "../stacks"
  create_resource_group    = var.create_resource_group
  resource_group_name      = var.resource_group_name
  location                 = var.location
  tags                     = var.tags
  app_config               = var.app_config
  ip_address               = var.ip_address
  app_settings             = var.app_settings
  connection_string        = var.connection_string
  asp_config               = var.asp_config
  default_documents        = var.default_documents
  storage_account_name     = var.storage_account_name
  account_kind             = var.account_kind
  skuname                  = var.skuname
  soft_delete_retention    = var.soft_delete_retention
  containers_list          = var.containers_list
}
