resource "aws_s3_bucket" "dashboard_website" {
  bucket = "prm-gp2gp-dashboard-${var.environment}"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}
