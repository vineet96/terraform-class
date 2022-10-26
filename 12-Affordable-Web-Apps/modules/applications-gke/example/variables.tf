variable "region" {
  default = "us-west1"
}

variable "vpc_name" {
}

variable "subnet_1" {
}

variable "gke_cluster_name"{
}

variable "gke_num_nodes" {
  default     = 1
  description = "number of gke nodes"
}

variable "gke_machine_type"{
    default = "n1-standard-1"
}

variable "pods_per_nodes" {
  default = 50
}

variable "google_container_node_pool_name" {   
}

variable "project" {
  
}













    

