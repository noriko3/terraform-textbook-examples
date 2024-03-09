/******************************************
	Webapp Variables
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
  description = "ストレージアカウントの名称を指定します"
  type        = string
  default     = "eastus"
}

variable "asp_config" {
  type        = map(any)
  description = "種類、階層、サイズなど、ASPの設定の詳細を指定します。"
  #default     = {}
}

variable "default_documents" {
  description = "Windows Web Appのデフォルトドキュメントのリストを指定します。"
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

variable "tags" {
  description = "すべてのリソースに追加するタグをmap型で指定します"
  type        = map(string)
  default     = {}
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
