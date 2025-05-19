provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

# Resource Group
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}


# Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

# Subnets
resource "azurerm_subnet" "subnets" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  name                 = each.value.name
  address_prefixes     = [each.value.address_prefix]
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
}

terraform {
  backend "azurerm" {
    resource_group_name  = "MES-DEV-RG"
    storage_account_name = "mesdevstrg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}



