variable "resource_group_name" {
  type        = string
  description = "The name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "The Azure location"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
}

variable "subnets" {
  description = "List of subnets to create"
  type = list(object({
    name           = string
    address_prefix = string
  }))
}


variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}
