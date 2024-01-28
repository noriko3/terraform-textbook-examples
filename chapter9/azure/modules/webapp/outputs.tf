/******************************************
	webapp output
 *****************************************/
output "webapp_name" {
  description = "Web App name"
  value       = azurerm_windows_web_app.webapp.name
}
output "webapp_id" {
  description = "Web App ID"
  value       = azurerm_windows_web_app.webapp.id
}
