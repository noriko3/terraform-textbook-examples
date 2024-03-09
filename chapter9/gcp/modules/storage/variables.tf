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
variable "project_id" {
  type        = string
  description = "プロジェクトIDを指定します"
}
variable "labels" {
  type        = map(any)
  description = "ラベルの名称を指定します"
}