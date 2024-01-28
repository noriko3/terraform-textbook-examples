# リソースグループの作成
#resource "azurerm_resource_group" "example" {
#  count    = 3
#  name     = "Terraform-rg${count.index}"
#  location = "westeurope"
#}

# 変数rg_namesを定義することで、上記のコードを以下のように定義することができます。
# 変数を定義したvariable.tfファイルを参照してください。
resource "azurerm_resource_group" "example" {
  count    = length(var.rg_names)
  name     = var.rg_names[count.index]
  location = "westeurope"
}
