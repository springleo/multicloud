output "s3_bucket_url" {
  #value = "https://${module.aws_s3.s3_bucket_name}.s3.amazonaws.com"
  value = var.is_aws_enabled ? "https://${module.aws_s3.s3_bucket_name}.s3.amazonaws.com" : "No AWS S3 bucket created"
}

output "azure_storage_account_url" {
  value = var.is_azure_enabled ? module.azure_storage.storage_account_name : "No Azure storage account created"
}
