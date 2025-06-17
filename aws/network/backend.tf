terraform {
  backend "s3" {
    bucket = "iac-state-bucket"
    key    = "aws/network/terraform.tfstate"
    region = "eu-west-1"
    encrypt = true
    lock_table = "iac-state-lock"
  }
}
