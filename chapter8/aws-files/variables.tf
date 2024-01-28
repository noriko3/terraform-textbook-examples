variable "vpc_name" {
  type        = string
  description = "vpcの名称"
}
variable "cidr_block" {
  type        = string
  description = "vpcのCIDRブロック"
  default     = "10.0.0.0/16"
}
variable "subnet_name" {
  type        = string
  description = "サブネットの名称"
}
variable "region" {
  type        = string
  description = "リソースをデプロイするリージョンを指定します"
}
variable "bucket_name" {
  type        = string
  description = "S3バケットの名称を指定します"
}
variable "custom_tags" {
  type        = map(any)
  description = "タグを指定します"
}
