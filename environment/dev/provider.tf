terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
   backend "azurerm" {
    resource_group_name  = "Backend"
    storage_account_name = "backendstg112233"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
   }
}

provider "azurerm" {
  features {}

}
