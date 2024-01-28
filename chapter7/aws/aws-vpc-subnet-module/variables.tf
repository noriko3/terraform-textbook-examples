variable "vpc_name" {
  type        = string
  description = "vpcの名称を指定します"
}
variable "cidr_block" {
  type        = string
  description = "vpcのCIDRブロックを指定します"
  default     = "10.0.0.0/16"
}
variable "subnet_name" {
  type        = string
  description = "サブネットの名称を指定します"
}
