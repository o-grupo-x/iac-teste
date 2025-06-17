# Fetch VPC outputs from the network stack

data "terraform_remote_state" "network" {
  backend = "local"
  config = {
    path = "../network/terraform.tfstate"
  }
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.4"
  cluster_name    = var.cluster_name
  cluster_version = "1.29"
  subnet_ids      = data.terraform_remote_state.network.outputs.private_subnets
  vpc_id          = data.terraform_remote_state.network.outputs.vpc_id

  enable_irsa = true

  eks_managed_node_groups = {
    stage = {
      instance_types = ["t3.medium"]
      desired_size   = 2
      max_size       = 3
      min_size       = 1
    }
  }
}

resource "aws_ecr_repository" "frontend" {
  name = "frontend"
}
