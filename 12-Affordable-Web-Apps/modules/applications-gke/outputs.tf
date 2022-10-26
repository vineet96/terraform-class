output "gke_name" {
    value = google_container_cluster.main.name
}

output "gke_id" {
    value = google_container_cluster.main.id
}

output "gke_self_link" {
    value = google_container_cluster.main.self_link
}