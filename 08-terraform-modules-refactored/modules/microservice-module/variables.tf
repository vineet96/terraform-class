variable "gke_cluster_name"{
  default = "gke"
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "machine_type"{
    default = "n1-standard-1"
}

variable "pods_per_nodes" {
  default = 50
}

variable "vpc" {
  default = "defualt"
}

variable "subnet" {
    default = "default"
  
}

variable "google_container_node_pool_name" {
    default = "node-pool-test"
  
}

variable "memory_size_gb" {
    default = 1
  
}

variable "tier" {
    default = "BASIC"
  
}

variable "memory_storage_name" {
   default = "memorystorage"
}

variable "versioning" {
    default = false
  
}

variable "project" {
  
}

variable "cloud_storage_name" {
  
}

variable "region" {
  default = "us-west1"
}
