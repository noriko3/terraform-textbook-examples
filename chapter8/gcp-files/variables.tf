variable "gcp_location" {
  type        = string
  description = "ロケーションの名称を指定します"
}
variable "force_destroy" {
  type        = bool
  description = "強制削除をするかしないかをbool値で指定します"
  default     = true
}
variable "storage_class" {
  type        = string
  description = "ストレージクラスを以下の値から指定します: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
}
variable "project_id" {
  type        = string
  description = "プロジェクトIDを指定します"
}
variable "project_name" {
  type        = string
  description = "プロジェクト名を指定します"
}
variable "labels" {
  type        = map(any)
  description = "ラベルの名称を指定します"
}
variable "gcp_region" {
  type        = string
  description = "リージョンの名称を指定します"
}
variable "zone" {
  type        = string
  description = "ゾーンの名称を指定します"
}
variable "ip_cidr_range" {
  type        = string
  description = "CIDRを指定します"
}
variable "address" {
  type        = string
  description = "固定IPをCIDR付で指定します"
}
variable "address_type" {
  type        = string
  description = "IPアドレスのタイプを指定します。`INTERNAL` か `EXTERNAL`"
}
variable "routing_mode" {
  type        = string
  description = "ルーティングモードを指定します。`GLOBAL` か `REGIONAL`"
}
