# 特定のリソースグループのリソースIDの出力を表示するには、以下のように定義します。

output "rg_id" {
  value       = azurerm_resource_group.example[0].id
  description = "リソースグループのID"
}

# リソースグループのリソースIDの出力をすべて表示するには、以下のコードブロックを使用します。

output "All_rg_id" {
  value       = azurerm_resource_group.example[*].id
  description = "全てのリソースグループのID"
}
