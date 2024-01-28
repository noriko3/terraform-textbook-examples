data "azurerm_resource_group" "dev" {
  name = "Terraform-lab-rg"
}
resource "azurerm_service_plan" "dev" {
  name                = var.appserviceplan_name
  location            = data.azurerm_resource_group.dev.location
  resource_group_name = data.azurerm_resource_group.dev.name
  sku_name            = "P1v2"
  os_type             = "Windows"
}
resource "azurerm_windows_web_app" "dev" {
  name                = var.appservice_name
  location            = data.azurerm_resource_group.dev.location
  resource_group_name = data.azurerm_resource_group.dev.name
  service_plan_id     = azurerm_service_plan.dev.id

  site_config {}
}
