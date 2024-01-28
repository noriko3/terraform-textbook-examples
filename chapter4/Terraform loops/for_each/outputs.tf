# 単一のリソースではなく、リソースのをマップ形式で出力
output "all_rg" {
  value = azurerm_resource_group.example
}

# 全てのリソースグループのID
output "all_id" {
  value = values(azurerm_resource_group.example)[*].id
}


