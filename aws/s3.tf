resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
#   acl    = "private"

  tags = {
    Environment = "Multi-Cloud"
    ManagedBy   = "Terraform"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.id
}
