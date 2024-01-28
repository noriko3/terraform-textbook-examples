variable "appserviceplan_name" {
  type        = string
  description = "app service planの名称を指定してください。"
}
variable "appservice_name" {
  type        = string
  description = "webappの名称を指定してください。"
}
variable "rg_name" {
  type        = string
  description = "作成済みのリソースグループの名前を指定してください。"
}
