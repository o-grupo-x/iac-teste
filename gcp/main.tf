resource "google_container_cluster" "frontend" {
  name               = var.cluster_name
  location           = var.zone
  initial_node_count = 1    # cria o default pool de 1 nó (100 GB)
}

resource "google_container_node_pool" "primary" {
  name       = "primary"
  location   = var.zone
  cluster    = google_container_cluster.frontend.name
  node_count = var.node_count

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 20       # seu pool “primary” de 2×20 GB consome só 40 GB
  }
}

resource "google_artifact_registry_repository" "frontend" {
  location      = "us-central1"
  repository_id = "frontend"
  description   = "Frontend container repository"
  format        = "DOCKER"
}
