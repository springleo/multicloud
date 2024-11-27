variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region"
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "azure_resource_group" {
  type        = string
  description = "Azure Resource Group name"
}

variable "azure_storage_name" {
  type        = string
  description = "Azure Storage Account name"
}

variable "azure_location" {
  type        = string
  default     = "East US"
  description = "Azure Region"
}
