terraform {
  backend "s3" {
    bucket = "load-balancer-malti-bucket-123"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
