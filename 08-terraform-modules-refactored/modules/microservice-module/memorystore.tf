resource "google_redis_instance" "memory-store-primary" {
  name           = var.memory_storage_name
  memory_size_gb = var.memory_size_gb
  region = var.region
  authorized_network = var.vpc
  project = var.project
  tier = var.tier
}