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


resource "azurerm_resource_group" "rgbackend" {
  name     = "Backend"
  location = "centralindia"

}

resource "azurerm_storage_account" "stgbackend" {
  name                     = "backendstg112233"
  resource_group_name      = azurerm_resource_group.rgbackend.name
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "contbackend" {
  name                  = "tfstate"
  storage_account_name    = azurerm_storage_account.stgbackend.name
  container_access_type = "private"

}
