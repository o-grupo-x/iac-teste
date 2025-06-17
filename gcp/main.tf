
resource "google_container_cluster" "frontend" {
  name     = var.cluster_name
  location = var.zone
  remove_default_node_pool = true
  initial_node_count       = 0
}

resource "google_container_node_pool" "primary" {
  name       = "primary"
  location   = var.zone
  cluster    = google_container_cluster.frontend.name
  node_count = var.node_count

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 20
  }
}

resource "google_artifact_registry_repository" "frontend" {
  location      = "us-central1"
  repository_id = "frontend"
  description   = "Frontend container repository"
  format        = "DOCKER"
}
