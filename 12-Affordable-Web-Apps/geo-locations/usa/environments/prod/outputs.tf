
output "storage_bucket_name" {
  value = module.data.bucket_name
}

output "storage_bucket_url" {
  value = module.data.bucket_url
}

output "memory_storage_name" {
  value = module.data.memorystore_name
}

output "memory_storage_id" {
  value = module.data.memorystore_id
}

output "memorystore_endpoint" {
  value = module.data.memorystore_endpoint
}

output "google_sql_database_name" {
  value = module.data.google_sql_database_name
}

output "google_sql_database_id" {
  value = module.data.google_sql_database_id
}

output "google_sql_database_private_ip" {
  value = module.data.google_sql_database_private_ip
}

output "google_sql_database_private_connection" {
  value = module.data.google_sql_database_private_connection
}

output "gke_name" {
  value = module.gke.gke_name
}

output "gke_id" {
  value = module.gke.gke_id
}

output "gke_self_link" {
  value = module.gke.gke_self_link
}