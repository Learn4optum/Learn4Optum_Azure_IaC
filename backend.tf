terraform {
  backend "azurerm" {
    resource_group_name  = "MES-DEV-RG"
    storage_account_name = "mesdevstrg"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
