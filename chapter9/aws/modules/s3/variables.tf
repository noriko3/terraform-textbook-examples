/******************************************
	Storage Variables
 *****************************************/
variable "create_bucket" {
  description = "S3バケットを作成するかどうかを指定します"
  type        = bool
  default     = true
}

variable "bucket_name" {
  type        = string
  description = "S3バケットの名称を指定します"
}

variable "custom_tags" {
  type        = map(string)
  description = "追加のタグが必要な場合は指定します"
}
variable "force_destroy" {
  description = "バケットからすべてのオブジェクトを削除して、エラーなくバケットを削除できるようにするかどうかをbool値で指定します。デフォルトは`false`です。これらのオブジェクトは回復不可能です"
  type        = bool
  default     = false
}

variable "acceleration_status" {
  description = "Transfer Accelerationを使うかを`Enabled` か `Suspended`で指定します。"
  type        = string
  default     = null
}
