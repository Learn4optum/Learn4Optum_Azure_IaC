variable "resource_group_name" {
  type        = string
  description = "The name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "The Azure location"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}