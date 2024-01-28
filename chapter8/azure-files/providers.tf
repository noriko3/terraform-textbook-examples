terraform {
  required_version = ">= 1.7.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "terraformtest1729"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "...."
  }
}
provider "azurerm" {
  features {}
}
