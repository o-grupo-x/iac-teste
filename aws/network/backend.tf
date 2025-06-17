terraform {
  backend "s3" {
    bucket = "iac-state-bucket"
    key    = "aws/network/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "iac-state-lock"
  }
}
