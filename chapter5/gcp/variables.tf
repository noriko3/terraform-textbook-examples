variable "location" {
  type        = string
  description = "バケットを配置する地域を指定します。ASIA US EN 等"
}
variable "project_id" {
  type        = string
  description = "ProjectのIDを指定します"
}
variable "bucket_name" {
  type        = string
  description = "GCSのバケット名を指定します"
}
