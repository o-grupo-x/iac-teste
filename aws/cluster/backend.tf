terraform {
  backend "s3" {
    bucket = "iac-state-bucket"
    key    = "aws/cluster/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "iac-state-lock"
  }
}
