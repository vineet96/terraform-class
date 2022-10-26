output "network_name" {
  value       = module.network.network_name
  description = "The name of the VPC being created"
}

output "network_id" {
  value       = module.network.network_id
  description = "The ID of the VPC being created"
}

output "network_self_link" {
  value       = module.network.network_self_link
  description = "The URI of the VPC being created"
}