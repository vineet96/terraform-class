module "microserice_production" {
  source           = "github.com/vineet96/microservice-module.git?ref=v0.0.2"
  gke_cluster_name = var.gke_cluster_name_production
  region           = var.region
  pods_per_nodes   = var.pods_per_nodes_production
  vpc              = google_compute_network.vpc.self_link
  subnet           = google_compute_subnetwork.subnet-west1.self_link

  google_container_node_pool_name = var.google_container_node_pool_name_production
  gke_num_nodes                   = var.gke_num_nodes
  machine_type                    = var.machine_type_production

  memory_storage_name = var.memory_storage_name_production
  memory_size_gb      = var.memory_size_gb_production
  tier                = var.memeory_tier_production
  project             = var.project

  cloud_storage_name = var.cloud_storage_name_production
  versioning         = true
}