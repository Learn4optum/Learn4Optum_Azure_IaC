variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The Azure location where the resource group will be created"
  type        = string
  default     = "East US"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}