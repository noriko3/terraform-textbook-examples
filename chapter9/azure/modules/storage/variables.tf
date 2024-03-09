/******************************************
	Azure Storage variables
 *****************************************/
variable "create_resource_group" {
  description = "リソースグループを作成し、すべてのネットワーキングリソースに使用するかどうかを指定します。デフォルトは `false` です"
  default     = false
}

variable "resource_group_name" {
  description = "リソースグループの名称を指定します。デフォルトは `terraform-lab-rg` です"
  type        = string
  default     = "terraform-lab-rg"
}

variable "location" {
  description = "全てのリソースを保持作成するロケーション/リージョンを指定します。デフォルトは `eastus` です"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "ストレージアカウントの名称を指定します"
  type        = string
  default     = ""
}

variable "account_kind" {
  description = <<EOF
  ストレージアカウントのタイプを指定します。`BlobStorage`、`BlockBlobStorage`、`FileStorage`、`Storage`、`StorageV2`のどれかを指定してください。
  デフォルトは `StorageV2`です
  EOF
  type        = string
  default     = "StorageV2"
}

variable "skuname" {
  description = <<EOF
  SKUの名称を指定します。
  `Premium_LRS`, `Premium_ZRS`, `Standard_GRS`, `Standard_GZRS`, `Standard_LRS`, `Standard_RAGRS`, `Standard_RAGZRS`, `Standard_ZRS`のどれかを指定してください。
  デフォルトは `Standard_RAGRS`です
  EOF
  default     = "Standard_RAGRS"
}

variable "access_tier" {
  description = "BlobStorageおよびStorageV2アカウントのアクセス層を指定します。`Hot` か `Cool` を指定します。デフォルトは `Hot` です。"
  default     = "Hot"
}

variable "soft_delete_retention" {
  description = "論理的な削除をした時の保持日数を指定します。nullを設定すると、論理的な削除は無効になります。デフォルトは `30`日です"
  default     = 30
}

variable "containers_list" {
  description = "作成するコンテナのアクセスレベルを指定します"
  type        = list(object({ name = string, access_type = string }))
  default     = []
}

variable "tags" {
  description = "すべてのリソースに追加するタグをmap型で指定します"
  type        = map(string)
  default     = {}
}
