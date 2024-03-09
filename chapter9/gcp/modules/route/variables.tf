/******************************************
	Routes Variables
 *****************************************/
variable "project_id" {
  type        = string
  description = "ルーティングを設定するプロジェクトのIDを指定します"
}

variable "vpc_name" {
  type        = string
  description = "ルーティングを設定するVPCの名称を指定します"
}

variable "routes" {
  type        = list(map(string))
  description = "VPCに設定するルーティングをリストで指定します"
  default     = []
}
