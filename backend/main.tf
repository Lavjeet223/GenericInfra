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


resource "azurerm_resource_group" "lavbackendrgblock" {
  name     = "Backend"
  location = "centralindia"

}

resource "azurerm_storage_account" "lavbackendstgblock" {
  name                     = "backendstg112233"
  resource_group_name      = azurerm_resource_group.lavbackendrgblock.name
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "lavbackendcontblock" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.lavbackendstgblock.id
  container_access_type = "private"

}
