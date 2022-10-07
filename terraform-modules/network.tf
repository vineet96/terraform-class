resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
  
}

resource "google_compute_subnetwork" "subnet-west1" {
  name          = "${var.project_id}-subnet-${var.region}"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.ip-cidr-range-west
}
