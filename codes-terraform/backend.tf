terraform {
  backend "s3" {
    bucket = "loadbalancer1-malti1-terraform-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
