variable "rg_names" {
  description = "リソースグループ名のリスト"
  type        = list(string)
  default     = ["Azure-rg", "AWS-rg", "Google-rg"]
}
