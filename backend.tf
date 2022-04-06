terraform {
  backend "s3" {
    bucket = "mydbv"
    key    = "vpccreation/terraform.tfstate"
    region = "us-east-1"
  }
}