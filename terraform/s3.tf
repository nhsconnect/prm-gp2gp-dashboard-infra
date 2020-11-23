resource "aws_s3_bucket" "dashboard_website" {
  bucket = var.s3_dashboard_bucket_name
  acl    = "public-read"

  tags = {
    Name        = "GP2GP service dashboard"
    CreatedBy   = var.repo_name
    Environment = var.environment
    Team        = var.team
  }

  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}
