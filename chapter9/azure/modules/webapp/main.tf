/******************************************
	App service plan Code
 *****************************************/
locals {
  resource_group_name = element(coalescelist(data.azurerm_resource_group.rgrp.*.name, azurerm_resource_group.rg.*.name, [""]), 0)
  location            = element(coalescelist(data.azurerm_resource_group.rgrp.*.location, azurerm_resource_group.rg.*.location, [""]), 0)
}
data "azurerm_resource_group" "rgrp" {
  count = var.create_resource_group == false ? 1 : 0
  name  = var.resource_group_name
}

resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = lower(var.resource_group_name)
  location = var.location
  tags     = merge({ "ResourceName" = format("%s", var.resource_group_name) }, var.tags, )
}

resource "azurerm_service_plan" "aspplan" {
  name                = lookup(var.asp_config, "app_service_plan_name")
  resource_group_name = local.resource_group_name
  location            = local.location
  tags                = merge({ "ResourceName" = format(lookup(var.asp_config, "app_service_plan_name")) }, var.tags, )
  os_type             = "Linux"
  sku_name            = "P1v2"
  #sku {
  #  tier     = lookup(var.asp_config, "tier")
  #  size     = lookup(var.asp_config, "size")
  #  capacity = lookup(var.asp_config, "capacity")
  #}
}

/******************************************
	App service Code
 *****************************************/

resource "azurerm_windows_web_app" "webapp" {
  name                = lookup(var.app_config, "app_name")
  resource_group_name = local.resource_group_name
  location            = local.location
  service_plan_id     = azurerm_service_plan.aspplan.id
  https_only          = "true"
  site_config {
    always_on          = lookup(var.app_config, "always_on")
    http2_enabled      = true
    use_32_bit_worker  = var.use_32_bit_worker_process
    ftps_state         = "FtpsOnly"
    websockets_enabled = var.websockets_enabled
    default_documents  = var.default_documents
    application_stack {
      dotnet_version = lookup(var.app_config, "dotnet_framework_version")
      java_version   = lookup(var.app_config, "java_version")
      #java_container            = lookup(var.app_config, "java_container")
      #java_container_version    = lookup(var.app_config, "java_container_version")
    }

    dynamic "ip_restriction" {
      for_each = var.ip_address
      content {
        ip_address = ip_restriction.value.ip_address
      }
    }
  }
  app_settings = var.app_settings
  dynamic "connection_string" {
    for_each = var.connection_string
    content {
      name  = connection_string.value.name
      type  = connection_string.value.type
      value = connection_string.value.value
    }
  }
  tags = merge({ "ResourceName" = format(lookup(var.app_config, "app_name")) }, var.tags, )
}
