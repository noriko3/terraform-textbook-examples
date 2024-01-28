variable "rgname" {
  type        = string
  description = "リソースグループの名称を指定します"
}
variable "location" {
  type        = string
  description = "ロケーションの名称を指定します"
}
variable "vnet_name" {
  type        = string
  description = "vnetにつける名称を指定します"
}
variable "address_space" {
  type        = list(string)
  description = "vnetのCIDRを指定します"
  default     = ["10.1.0.0/16"]
}
variable "subnet_name" {
  type        = string
  description = "サブネットの名称を指定します"
}
variable "nic_name" {
  type        = string
  description = "NICの名称を指定します"
}
variable "vm_name" {
  type        = string
  description = "VMの名称を指定します"
}
variable "vm_size" {
  type        = string
  description = "VMのサイズを指定します"
}
variable "admin_username" {
  type        = string
  description = "Adminのユーザ名を指定します。デフォルトはazureuserです"
  default     = "azureuser"
}
variable "vm_publisher" {
  type        = string
  description = "VMの作成元になるマーケットプレイスのイメージ発行者"
}
variable "vm_offer" {
  type        = string
  description = "VMの作成時に使用されるイメージのオファーを指定します"
}
variable "vm_sku" {
  type        = string
  description = "VMの作成時に使用されるイメージのSKUを指定します"
}
variable "vm_version" {
  type        = string
  description = "VMにインストールするOSのバージョンを指定します。デフォルトはlasestです"
  default     = "latest"
}
variable "keyvault_name" {
  type        = string
  description = "keyvaultの名称を指定します"
}
variable "sku_name" {
  type        = string
  description = "keyvaultのskuを指定します"
}
variable "keyvault_secret_name" {
  type        = string
  description = "keyvaultのシークレットの名称を指定します。デフォルトはvmpasswordです"
  default     = "vmpassword"
}
variable "tags" {
  description = "タグを指定します"
}
