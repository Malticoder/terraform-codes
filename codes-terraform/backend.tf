terraform {
  backend "s3" {
    bucket = "loadbalancer2-malti2-terraform-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

