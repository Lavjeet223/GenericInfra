terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id= "b0805f22-5464-4af2-968e-fabac43ebd20"
}
