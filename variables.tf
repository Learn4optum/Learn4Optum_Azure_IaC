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

variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

