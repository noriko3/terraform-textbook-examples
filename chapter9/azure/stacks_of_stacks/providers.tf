terraform {
  required_version = ">= 1.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  #backend "azurerm" {
  #  storage_account_name = "terraformtest1729"
  #  container_name       = "terraform"
  #  key                  = "chapter9/terraform.tfstate"
  #  access_key           = "KRqtJIA0Gp4oKBsElD.."
  #}
}
provider "azurerm" {
  features {}
}
