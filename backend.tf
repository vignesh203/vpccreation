terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}