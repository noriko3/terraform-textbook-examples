variable "gcp_stg_name" {
  type        = string
  description = "ストレージのバケット名を指定します"
}
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
variable "project" {
  type        = string
  description = "プロジェクトIDを指定します"
}
variable "labels" {
  type        = map(any)
  description = "ラベルの名称を指定します"
}
