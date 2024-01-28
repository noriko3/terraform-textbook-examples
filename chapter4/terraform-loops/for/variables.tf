# リストで変数を定義
variable "cloud" {
  description = "クラウドのリスト"
  type        = list(string)
  default     = ["azure", "aws", "gcp"]
}

# マップで変数を定義
variable "cloud_map" {
  description = "クラウドのリスト（マップ）"
  type        = map(string)
  default = {
    Azure = "Microsoft"
    AWS   = "Amazon"
    GCP   = "Google"
  }
}
