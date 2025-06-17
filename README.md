# Infrastructure Repository

This project contains example Terraform configurations for AWS and GCP as well as Kubernetes manifests and a sample frontend application.

## Directory Structure

- `aws/` - Infrastructure for AWS split into two stacks:
  - `network/` - Creates the VPC and related networking resources.
  - `cluster/` - Deploys the EKS cluster and ECR repository. Reads the VPC outputs from `network`.
- `gcp/` - Terraform configuration for a GKE cluster and Artifact Registry repository.

- `k8s/` - Kubernetes manifests for the application stack.
- `frontend/` - Static frontend served by a Docker container.

The GitHub Actions workflows provision the infrastructure using these stacks and run `terraform validate` before applying changes.
