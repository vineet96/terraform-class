variable "gke_cluster_name_staging" {
  default = "gke-staging"
}

variable "application_name_staging" {
  default = "hr-staging"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "machine_type" {
  default = "n1-standard-1"

}

variable "tier" {
  default = "BASIC"

}

variable "memory_storage_name_staging" {
  default = "ms-staging"
}

variable "cloud_storage_name_staging" {
  default = "replace with your cloud storage name"
}


resource "google_container_cluster" "primary" {
  name     = "${var.gke_cluster_name_staging}-${var.application_name_staging}"
  location = var.region

  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
  initial_node_count       = 1
  enable_shielded_nodes    = true

  network    = google_compute_network.vpc.self_link
  subnetwork = google_compute_subnetwork.subnet-west1.self_link
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = var.gke_num_nodes

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    machine_type = var.machine_type
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

resource "google_redis_instance" "memory-store-primary" {
  name               = "${var.memory_storage_name_staging}-${var.application_name_staging}"
  memory_size_gb     = 1
  region             = var.region
  authorized_network = google_compute_network.vpc.self_link
  project            = var.project
  tier               = var.tier
}

resource "google_storage_bucket" "cloud-storge-primary" {
  name                        = "${var.cloud_storage_name_staging}-${var.application_name_staging}"
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


