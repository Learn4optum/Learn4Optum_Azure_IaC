# Variables for configuring the resource group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region for the resource group"
  type        = string
  default     = "East US"
}