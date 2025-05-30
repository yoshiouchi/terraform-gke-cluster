provider "google" {
  credentials = file(var.credentials_file)
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone

  remove_default_node_pool = true
  initial_node_count       = 1

  node_config {
    machine_type = var.machine_type
  }

  node_pool {
    name       = "default-node-pool"
    node_count = var.node_count

    node_config {
      machine_type = var.machine_type
    }
  }
}

terraform {
  backend "gcs" {
    bucket = "your-terraform-state-bucket"
    prefix = "terraform/state"
  }
}
