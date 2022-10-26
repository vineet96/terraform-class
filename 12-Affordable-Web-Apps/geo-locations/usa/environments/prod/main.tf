module "data" {
  source              = "../../../../modules/data"
  memory_storage_name = var.memory_storage_name
  memory_size_gb      = var.memory_size_gb
  tier                = var.tier
  project             = var.project
  vpc_name            = var.vpc_name
  cloud_storage_name  = var.cloud_storage_name
  versioning          = false
  cloud_sql_name      = var.cloud_sql_name
  database_version    = var.database_version
  db_tier             = var.db_tier
  enable_apis         = true
}

module "gke" {
  source                          = "../../../../modules/applications-gke"
  gke_cluster_name                = var.gke_cluster_name
  region                          = var.region
  pods_per_nodes                  = var.pods_per_nodes
  vpc_name                        = var.vpc_name
  subnet                          = var.subnet_1
  google_container_node_pool_name = var.google_container_node_pool_name
  gke_num_nodes                   = var.gke_num_nodes
  gke_machine_type                = var.gke_machine_type
  project                         = var.project
}