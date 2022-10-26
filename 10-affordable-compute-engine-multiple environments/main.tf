terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.30.0"
    }
  }

}
provider "google" {
  credentials = var.credentials
  region      = var.region-west
  zone        = var.zone_west1
  project     = var.project

}

resource "google_compute_network" "vpc" {
  name                    = "${var.project}-vpc"
  auto_create_subnetworks = "false"

}

resource "google_compute_firewall" "allow-http" {
  name    = "${google_compute_network.vpc.name}-allow-http"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags   = ["http-server"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-https" {
  name    = "${google_compute_network.vpc.name}-allow-https"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  target_tags   = ["https-server"]
  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-ssh" {
  name    = "${google_compute_network.vpc.name}-allow-ssh"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags   = ["ssh"]
  source_ranges = ["0.0.0.0/0"]
}




