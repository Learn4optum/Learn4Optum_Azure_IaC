provider "azurerm" {
  features {}
  subscription_id = ""
  client_id = ""
}

variable "namespace" {
  default = "test"
}

variable "location" {
  default = "centralus"
}

variable "tags" {
  default = {
    "aide-id" = "AIDE_0074837"
    "dr-tier" = "active"
    "environment" = "dev"
    service-tier = "p1"
  }
}

resource "azurerm_resource_group" "dev-rg" {
  name     = format("dev-rg-%s", var.namespace)
  location = var.location
  tags = var.tags
}

