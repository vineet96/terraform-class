output "network" {
    value = google_compute_network.main
  
}

output "network_name" {
  value       = google_compute_network.main.name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = google_compute_network.main.id
  description = "The ID of the VPC being created"
}

output "network_self_link" {
  value       = google_compute_network.main.self_link
  description = "The URI of the VPC being created"
}

