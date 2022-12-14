resource "aws_s3_bucket" "datalake" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "wallas"
    Environment = "dev"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

