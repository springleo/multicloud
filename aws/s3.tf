resource "aws_s3_bucket" "bucket" {
  count = var.is_aws_enabled == true ? 1 : 0
  bucket = var.bucket_name
#   acl    = "private"

  tags = {
    Environment = "Multi-Cloud"
    ManagedBy   = "Terraform"
  }
}

output "s3_bucket_name" {
  count = var.is_aws_enabled == true ? 1 : 0
  value = aws_s3_bucket.bucket.id
}
