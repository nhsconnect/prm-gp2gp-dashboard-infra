provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "cf_certificate_only_region"
  region = "us-east-1"
}