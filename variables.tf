variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region"
}

variable "is_aws_enabled" {
  type = boolean
  default = false
}

variable "is_azure_enabled" {
  type = boolean
  default = false
}

variable "s3_bucket_name" {
  type        = string
  default = "my-multi-cloud-bucket"
  description = "Name of the S3 bucket"
}

variable "azure_resource_group" {
  type        = string
  default = "multi-cloud-rg"
  description = "Azure Resource Group name"
}

variable "azure_storage_name" {
  type        = string
  default = "multicloudstorageacct"
  description = "Azure Storage Account name"
}

variable "azure_location" {
  type        = string
  default     = "East US"
  description = "Azure Region"
}
