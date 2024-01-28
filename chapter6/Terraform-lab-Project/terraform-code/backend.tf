terraform {
  required_version = ">= 1.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  # release pipeline実行時に -backend-config の引数を使ってバックエンドを設定してくれますので
  # ここにbackendブロックを記載する必要はありません
}
