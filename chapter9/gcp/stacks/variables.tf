variable "zone" {
  type        = string
  description = "ゾーンを指定します"
}
variable "region" {
  type        = string
  description = "リージョンを指定します"
}
variable "project_name" {
  type        = string
  description = "プロジェクト名を指定します"
}
variable "labels" {
  type        = map(any)
  description = "ラベルを指定します"
}
/******************************************
	VPC variables
 *****************************************/

variable "project_id" {
  type        = string
  description = "このVPCを作成するプロジェクトのIDを指定します"
}

variable "vpc_name" {
  type        = string
  description = "作成しようとしているネットワークの名称を指定します"
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
  description = <<EOF
  "trueに設定すると、ネットワークは'auto subnet mode'で作成され、10.128.0.0/9のアドレス範囲に渡って各リージョンのサブネットを自動的に作成します。
  falseに設定すると、ネットワークは'カスタムサブネットモード'で作成され、ユーザーは明示的にサブネットワークのリソースを関連付けることができます。"
  EOF
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

/******************************************
	Subnet Variables
 *****************************************/
variable "subnets" {
  type        = list(map(string))
  description = "作成するサブネットをリストで指定します"
}

variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "セカンダリIPの範囲を指定します"
  default     = {}
}
variable "routes" {
  description = "VPCに設定するルーティングをリストで指定します"
  type = list(object({
    name              = string
    description       = string
    destination_range = string
    tags              = string
    next_hop_internet = bool
  }))
  default = []
}
/******************************************
	Storage Variables
 *****************************************/
variable "stg_name" {
  type        = string
  description = "バケットの名称を指定します"
}
variable "location" {
  type        = string
  description = "ロケーションの名称を指定します"
}
variable "force_destroy" {
  type        = bool
  description = "強制削除をするかしないかをbool値で指定します。デフォルトは `true` です"
  default     = true
}
variable "storage_class" {
  type        = string
  description = "ストレージクラスを以下の値から指定します: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
}