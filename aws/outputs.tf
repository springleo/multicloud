
output s3_bucket_name {
  value = var.is_aws_enabled ? aws_s3_bucket.bucket.bucket : "No AWS S3 bucket created"
}