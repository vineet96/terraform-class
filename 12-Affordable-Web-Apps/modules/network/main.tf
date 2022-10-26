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
    service =  "compute.googleapis.com"
    disable_dependent_services = true
    disable_on_destroy  = false
  }



resource "google_compute_network" "main" {
  name                    = var.vpc_name
  project = var.project
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "main" {
  for_each = var.subnets
  name          = each.key
  region        = each.value["region"]
  network       = google_compute_network.main.self_link
  ip_cidr_range = each.value.ip_cidr_range
  project = var.project
}

resource "google_compute_firewall" "main" {
  for_each = var.firewalls
  name = "${google_compute_network.main.name}-${each.key}"
  network = google_compute_network.main.self_link
  allow {
    protocol = each.value["protocol"]
    ports    = each.value["ports"]
  }
  target_tags = each.value["target_tags"]
  source_ranges = each.value["source_ranges"]
  project = var.project
}


