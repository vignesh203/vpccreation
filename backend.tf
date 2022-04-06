terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "aws-ec2-creation/terraform.tfstate"
    region = "us-east-1"
  }
}