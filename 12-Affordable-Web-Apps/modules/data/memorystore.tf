resource "google_redis_instance" "main" {
  name           = var.memory_storage_name
  memory_size_gb = var.memory_size_gb
  region = var.region
  authorized_network = var.vpc_name
  project = var.project
  tier = var.tier
}