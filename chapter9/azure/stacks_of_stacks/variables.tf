#Common variables
variable "tags" {
  type        = map(string)
  description = "すべてのリソースに追加するタグをmap型で指定します"
}
variable "create_resource_group" {
  description = "リソースグループを作成し、すべてのネットワーキングリソースに使用するかどうかを指定します。デフォルトは `false` です"
  default     = false
}

variable "resource_group_name" {
  description = "ソースグループの名称を指定します。デフォルトは `terraform-lab-rg` です"
  type        = string
  default     = "terraform-lab-rg"
}

variable "location" {
  description = "全てのリソースを保持作成するロケーション/リージョンを指定します。デフォルトは `eastus` です"
  type        = string
  default     = "eastus"
}

# Storage account variables
variable "storage_account_name" {
  description = "ストレージアカウントの名称を指定します"
  type        = string
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
variable "account_tier" {
  description = "provide account tier like Premium or Standard"
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "レプリケーションのタイプを指定します。`LRS`、`GRS`などがあります。デフォルトは `LRS` です"
  type        = string
  default     = "LRS"
}
variable "soft_delete_retention" {
  description = "論理的な削除をした時の保持日数を指定します。nullを設定すると、論理的な削除は無効になります。デフォルトは `30`日です"
  default     = 30
}
variable "account_kind" {
  description = <<EOF
  ストレージアカウントのタイプを指定します。`BlobStorage`、`BlockBlobStorage`、`FileStorage`、`Storage`、`StorageV2`のどれかを指定してください。
  デフォルトは `StorageV2`です
  EOF
  default     = "StorageV2"
}
variable "containers_list" {
  description = "作成するコンテナのアクセスレベルを指定します"
  type        = list(object({ name = string, access_type = string }))
  default     = []
}

#Webapp variables

variable "asp_config" {
  type        = map(any)
  description = "種類、階層、サイズなど、ASPの設定の詳細を指定します。"
}
variable "default_documents" {
  description = "Windows Web Appのデフォルトドキュメントのリストを指定します"
  type        = list(string)
  default     = null
}
variable "app_config" {
  description = <<EOF

AppService設定のキー/値マップを指定します。

注意: Javaのプロパティは必須です。不要な場合は null を指定してください
以下、例です。

```
app_config = {
  app_name = "terraformtestingwebapp"
  dotnet_framework_version = "v2.2"
  app_command_line = "dotnet TheBestApi.dll"
  java_version = null
}
```
EOF
  type        = map(any)
}

variable "ip_address" {
  description = "IPアドレスのリストを指定します"
  type        = list(any)
}

variable "app_settings" {
  description = <<EOF
AppService設定のkey/valueのマップ
Sample settings
  app_settings = {
    ASPNETCORE_HTTPS_PORT  = "443"
    WEBSITE_HTTPLOGGING_RETENTION_DAYS = "7"
  }

EOF
  type        = map(any)
  default     = {}
}
variable "connection_string" {
  description = "SQLデータベース接続のリストを指定します"
  type        = list(any)
  default     = []
}
variable "use_32_bit_worker_process" {
  description = <<EOF
  32ビットワーカーを使用するかどうかを指定します。
  フリープランまたは共有プランのApp Service Planを使用する場合、use_32_bit_worker_processをtrueに設定する必要があります。
  デフォルトは `false`です
  EOF
  default     = false
}
variable "websockets_enabled" {
  description = "WebSocketを有効にするかどうかを指定します。デフォルトは `false`です"
  default     = false
}
