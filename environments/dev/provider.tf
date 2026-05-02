terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1e10c906-b475-44f5-8e2a-ba4f0d6d8803"
}
