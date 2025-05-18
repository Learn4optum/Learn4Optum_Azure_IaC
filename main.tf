provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location

  tags = {
    environment = each.key
    created_by  = "terraform"
  }
}



terraform {
  backend "azurerm" {
    resource_group_name  = "MES-DEV-RG"
    storage_account_name = "mesdevstrg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
