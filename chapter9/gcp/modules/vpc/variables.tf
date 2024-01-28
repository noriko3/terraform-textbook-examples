/******************************************
	VPCの変数
 *****************************************/
variable "project_id" {
  type        = string
  description = "このVPCを作成するプロジェクトのID"
}

variable "vpc_name" {
  type        = string
  description = "作成しようとしているネットワークの名称"
}

variable "vpc_routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "ネットワークのルーティングのモード(デフォルトは'GLOBAL')"
}

variable "vpc_description" {
  type        = string
  description = "VPCの説明。この値を変更するには、リソースを再作成する必要があります。"
  default     = ""
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "trueに設定すると、ネットワークは'auto subnet mode'で作成され、10.128.0.0/9のアドレス範囲に渡って各リージョンのサブネットを自動的に作成します。falseに設定すると、ネットワークは'カスタムサブネットモード'で作成され、ユーザーは明示的にサブネットワークのリソースを関連付けることができます。"
  default     = false
}

variable "delete_default_routes_on_create" {
  type        = bool
  description = "設定されている場合、指定されたネットワーク内で、名前が「default-route」で始まり、ネクストホップが「default-internet-gateway」であるすべてのルートが確実に削除されます。"
  default     = false
}

variable "vpc_mtu" {
  type        = number
  description = "ネットワークのMTU。1460 から 1500 の間の値でなければなりません。0（MTUが未設定であることを意味します）に設定すると、ネットワークは自動的に1460にデフォルト設定されます。"
  default     = 0
}
