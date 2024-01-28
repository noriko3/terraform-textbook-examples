rgname   = "Terraform-rg"
location = "eastus"
custom_tags = {
  Environment = "prod"
  Owner       = "Azure-Terraform"
}
vm_size                  = "Standard_F2"
vm_name                  = "Terraform-vm"
admin_username           = "azureterraform"
vm_publisher             = "MicrosoftWindowsServer"
vm_offer                 = "WindowsServer"
vm_sku                   = "2016-Datacenter"
vm_version               = "latest"
sku_name                 = "premium"
vnet_name                = "Terraform-vnet"
address_space            = ["10.1.0.0/16"]
subnet_name              = "Terraform-subnet"
nic_name                 = "Terraform-nic"
keyvault_name            = "terraform-vm-keyvault"
keyvault_secret_name     = "Terraform-vm-password"
account_tier             = "Standard"
account_replication_type = "LRS"
