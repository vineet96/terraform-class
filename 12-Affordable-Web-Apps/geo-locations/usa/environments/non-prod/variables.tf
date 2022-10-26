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

variable "vpc_name" {
}

variable "subnet_1" {
}

variable "subnet_2" {
}

variable "memory_storage_name" {
}

variable "memory_size_gb" {
}

variable "cloud_storage_name" {
}

variable "versioning" {
}

variable "tier" {
}

variable "cloud_sql_name" {
}

variable "database_version" {
}

variable "db_tier" {
}

variable "gke_cluster_name" {
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "gke_machine_type" {
  default = "n1-standard-1"
}

variable "pods_per_nodes" {
  default = 50
}

variable "google_container_node_pool_name" {
}