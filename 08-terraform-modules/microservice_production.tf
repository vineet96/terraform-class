variable "gke_cluster_name_production" {
  default = "gke-production"
}


variable "application_name_production" {
  default = "hr-production"

}

variable "gke_num_nodes_production" {
  default     = 1
  description = "number of gke nodes"
}

variable "machine_type_production" {
  default = "n1-standard-1"

}

variable "tier_production" {
  default = "BASIC"

}

variable "memory_storage_name_production" {
  default = "ms-production"
}

variable "cloud_storage_name_production" {
  default = "replace with your cloud storage name"
}


resource "google_container_cluster" "production" {
  name     = "${var.gke_cluster_name_production}-${var.application_name_production}"
  location = var.region

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
  enable_shielded_nodes    = true
  network                  = google_compute_network.vpc.self_link
  subnetwork               = google_compute_subnetwork.subnet-west1.self_link
}

resource "google_container_node_pool" "production" {
  name       = "${google_container_cluster.production.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.production.name
  node_count = var.gke_num_nodes_production

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    machine_type = var.machine_type_production
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

resource "google_redis_instance" "production" {
  name               = "${var.memory_storage_name_production}-${var.application_name_production}"
  memory_size_gb     = 1
  region             = var.region
  authorized_network = google_compute_network.vpc.self_link
  project            = var.project
  tier               = var.tier_production
}

resource "google_storage_bucket" "production" {
  name                        = "${var.cloud_storage_name_production}-${var.application_name_production}"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type          = "SetStorageClass"
      storage_class = "REGIONAL"

    }
  }

  versioning {
    enabled = false
  }
}


