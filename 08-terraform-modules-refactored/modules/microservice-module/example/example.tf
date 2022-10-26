module "module_example" {
  source           = "github.com/vineet96/microservice-module.git?ref=v0.0.2"
  gke_cluster_name = var.gke_cluster_name
  region           = var.region
  pods_per_nodes   = var.pods_per_nodes
  vpc              = google_compute_network.vpc.self_link
  subnet           = google_compute_subnetwork.subnet-west1.self_link

  google_container_node_pool_name = var.google_container_node_pool_name
  gke_num_nodes                   = var.gke_num_nodes
  machine_type                    = var.gke_machine_type

  memory_storage_name = var.memory_storage_name
  memory_size_gb      = var.memory_size_gb
  tier                = var.tier
  project          = var.project

  cloud_storage_name = var.cloud_storage_name
  versioning         = var.versioning
}