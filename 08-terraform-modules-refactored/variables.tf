variable "project" {
}

variable "credentials" {
}

variable "region" {
  default = "us-west1"
}

variable "zone" {
  default = "us-west1-a"
}

variable "ip-cidr-range-west" {
  default = "10.10.0.0/28"
}

variable "gke_cluster_name_staging" {
  default = "gke-staging-hr"
}

variable "gke_cluster_name_production" {
  default = "gke-production-hr"
}

variable "google_container_node_pool_name_production" {

}

variable "google_container_node_pool_name_staging" {

}

variable "gke_num_nodes" {
  default = 1
}

variable "machine_type_production" {
  default = "n1-standard-1"
}

variable "machine_type_staging" {
  default = "n1-standard-1"
}

variable "memory_storage_name_production" {
  default = "memorystore-production-hr"
}

variable "memory_storage_name_staging" {
  default = "memorystore-staging-hr"
}

variable "memory_size_gb_production" {
  default = 1
}

variable "memory_size_gb_staging" {
  default = 1
}

variable "memeory_tier_production" {
  default = "BASIC"
}

variable "memeory_tier_staging" {
  default = "BASIC"
}

variable "cloud_storage_name_staging" {
  default = "cloudstorage-staging-hr-6354387271"
}

variable "cloud_storage_name_production" {
  default = "cloudstorage-production-hr-6354387271"
}

variable "pods_per_nodes_staging" {
  default = 100
}

variable "pods_per_nodes_production" {
  default = 100
}