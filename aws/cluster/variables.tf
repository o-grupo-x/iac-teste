variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "profile" {
  description = "AWS CLI profile name"
  default     = "default"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks-stage-cluster"
}

