resource "aws_s3_bucket" "FoundryBucket" {
  bucket = "${var.deployment_name}-foundry-bucket"
  acl    = "public-read"

  cors_rule {
      allowed_headers = ["*"]
      allowed_methods = ["GET", "PUT", "HEAD"]
      allowed_origins = ["*"]
      max_age_seconds = 3000
  }

  tags = {
    Name        = "${var.deployment_name}-foundry-bucket"
  }
}
