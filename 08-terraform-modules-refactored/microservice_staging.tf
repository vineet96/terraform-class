module "microserice_staging" {
  source           = "github.com/vineet96/microservice-module.git?ref=v0.0.1"
  gke_cluster_name = var.gke_cluster_name_staging
  region           = var.region
  pods_per_nodes   = var.pods_per_nodes_staging
  vpc              = google_compute_network.vpc.self_link
  subnet           = google_compute_subnetwork.subnet-west1.self_link

  google_container_node_pool_name = var.google_container_node_pool_name_staging
  gke_num_nodes                   = var.gke_num_nodes
  machine_type                    = var.machine_type_staging

  memory_storage_name = var.memory_storage_name_staging
  memory_size_gb      = var.memory_size_gb_staging
  tier                = var.memeory_tier_staging
  project             = var.project

  cloud_storage_name = var.cloud_storage_name_staging
  versioning         = false

}
