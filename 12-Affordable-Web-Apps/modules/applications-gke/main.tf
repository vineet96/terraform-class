terraform {
  		required_providers {
   			 google = {
      	     source  = "hashicorp/google"
     		 version = ">= 4.30.0"
    		 }
  		 }
}


resource "google_project_service" "main"{
	project =  var.project
    service =  "container.googleapis.com"
    disable_dependent_services = true
    disable_on_destroy  = false
  }


resource "google_container_cluster" "main" {
  name     = var.gke_cluster_name
  location = var.region
  remove_default_node_pool = true
  initial_node_count       = 1
  enable_shielded_nodes = true
  network    = var.vpc_name
  subnetwork = var.subnet
}

resource "google_container_node_pool" "main" {
  name       = var.google_container_node_pool_name
  location   = var.region
  cluster    = google_container_cluster.main.name
  node_count = var.gke_num_nodes
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
    machine_type = var.gke_machine_type
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}