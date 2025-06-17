terraform {
  backend "gcs" {
    bucket  = "iac-state-bucket"
    prefix  = "gcp"
  }
}
