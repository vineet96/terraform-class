output "bucket_name" {
    value = google_storage_bucket.main.name

}

output "bucket_url" {
    value = google_storage_bucket.main.url
}

output "memorystore_name" {
  value = google_redis_instance.main.name
}

output "memorystore_id" {
  value = google_redis_instance.main.id
}

output "memorystore_endpoint" {
  value = google_redis_instance.main.read_endpoint
}

output "google_sql_database_name" {
    value = google_sql_database_instance.instance.name
}

output "google_sql_database_id" {
    value = google_sql_database_instance.instance.id
}

output "google_sql_database_private_ip" {
    value = google_sql_database_instance.instance.private_ip_address
}

output "google_sql_database_private_connection" {
    value = google_sql_database_instance.instance.connection_name
}