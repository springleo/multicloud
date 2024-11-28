output "s3_bucket_url" {
  #value = "https://${module.aws_s3.s3_bucket_name}.s3.amazonaws.com"
  value = var.is_aws_enabled ? "https://${module.aws_s3.s3_bucket_name}.s3.amazonaws.com" : "No AWS S3 bucket created"
}
