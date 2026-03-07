terraform {
  backend "s3" {
    bucket = "loadbalancer-malti-terraform-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
