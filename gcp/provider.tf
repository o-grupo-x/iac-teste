provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = jsondecode(base64decode(var.gcp_credentials))
}
