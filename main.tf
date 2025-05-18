provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.resource_group_location
}


terraform {
  backend "azurerm" {
    resource_group_name  = "MES-DEV-RG"
    storage_account_name = "mesdevstrg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
