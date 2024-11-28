variable "resource_group" {
  type        = string
  description = "Azure Resource Group name"
}

variable "storage_name" {
  type        = string
  description = "Name of the Azure Storage Account"
}

variable "azure_location" {
  type        = string
  description = "Azure region for the resources"
}

variable "is_azure_enabled" {
  type = bool
  default = false
}