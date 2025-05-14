provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_virtual_network" "main" {
  for_each            = var.vnet_name
  name                = each.value_name
  address_space       = each.value.address_space
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_servers         = var.dns_servers

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "main" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_prefixes
}
terraform {
  backend "azurerm" {
    resource_group_name  = "MES-DEV-RG"
    storage_account_name = "mesdevstrg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
