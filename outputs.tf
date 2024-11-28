output "s3_bucket_url" {
  value = "https://${module.aws_s3.s3_bucket_name}.s3.amazonaws.com"
}

output "azure_storage_account_url" {
  value = module.azure_storage.storage_account_name
}
