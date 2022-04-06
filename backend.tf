terraform {
  backend "s3" {
    bucket = "mydbv"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}