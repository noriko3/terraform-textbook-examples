/******************************************
	VPC Variables
 *****************************************/
variable "instance_tenancy" {
  description = "テナンシーの詳細を指定します"
  type        = string
}

variable "vpc_name" {
  description = "VPCの名称を指定します"
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "VPCのCIDRブロックを指定します。デフォルト値は有効なCIDRになっていますがこの設定は受け入れてもらえませんので変更してください"
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_dns_hostnames" {
  description = "VPC内のDNSホスト名を有効にするかどうかを指定します。デフォルト値は `false` です"
  type        = bool
  default     = false
}

variable "enable_dns_support" {
  description = "VPCでDNSサポートを有効にするかどうかを指定します。デフォルト値は `ture` です"
  type        = bool
  default     = true
}

variable "assign_generated_ipv6_cidr_block" {
  description = "VPC用にAmazonが提供する/56プレフィックス長のIPv6 CIDRブロックを使うかどうかを指定します。デフォルト値は `false` です"
  type        = bool
  default     = false
}
/******************************************
	Subnet Variables
 *****************************************/
variable "subnet_name" {
  type        = string
  description = "サブネットの名称を指定します"
}

variable "subnet_cidr" {
  type        = string
  description = "サブネットの範囲を指定します"
}
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

variable "bucket_acl" {
  type        = string
  description = "S3バケットのACLを指定します。例: `private`、`public-read`"
  default     = "private"
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

variable "request_payer" {
  description = "(Optional) Specifies who should bear the cost of Amazon S3 data transfer. Can be either BucketOwner or Requester. By default, the owner of the S3 bucket would incur the costs of any data transfer. See Requester Pays Buckets developer guide for more information."
  type        = string
  default     = null
}
variable "region" {
  description = "provide region name where resource needs to get created"
  type        = string
}
