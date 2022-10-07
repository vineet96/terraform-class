module "microserice_staging" {
  source = "github.com/vineet96/microservice-module.git?ref=v0.0.1"
  gke_cluster_name = "gke-staging-hr"
  region = var.region
  pods_per_nodes = 25
  vpc = google_compute_network.vpc.self_link
  subnet = google_compute_subnetwork.subnet-west1.self_link

  google_container_node_pool_name = "gke-noodpool-staging-hr"
  gke_num_nodes = 1
  machine_type = "n1-standard-1"

  memory_storage_name = "memorystore-staging-hr"
  memory_size_gb = 1
  tier  = "BASIC"
  project_id = var.project_id

  cloud_storage_name = "cloudstorage-staging-hr-635438727"
  versioning = false

}
