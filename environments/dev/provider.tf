terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "07e87319-d236-4c44-8d8a-04bdf0b7335a"
  
}