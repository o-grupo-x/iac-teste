variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "profile" {
  description = "AWS CLI profile name"
  default     = "default"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks-stage-cluster"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
