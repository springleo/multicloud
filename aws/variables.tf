variable "aws_region" {
  type        = string
  description = "AWS region for the S3 bucket"
}

variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "is_aws_enabled" {
  type = bool
  default = false
}