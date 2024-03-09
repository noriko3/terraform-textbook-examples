/******************************************
	Subnet Variables
 *****************************************/
variable "project_id" {
  type        = string
  description = "プロジェクトIDを指定します"
}

variable "vpc_name" {
  type        = string
  description = "サブネットを作成するVPCの名称を指定します"
}

variable "subnets" {
  type        = list(map(string))
  description = "作成するサブネットをリストで指定します"
}

variable "secondary_ranges" {
  type        = map(list(object({ range_name = string, ip_cidr_range = string })))
  description = "セカンダリIPの範囲を指定します"
  default     = {}
}