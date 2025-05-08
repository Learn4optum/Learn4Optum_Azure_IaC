# Provider configuration
provider "azurerm" {
  features {}
}

# Resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Output the resource group name
output "resource_group_name" {
  value = azurerm_resource_group.example.name
}