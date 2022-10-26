resource "google_compute_subnetwork" "subnet-west1" {
  name          = "${var.project}-subnet-${var.region-west}"
  region        = var.region-west
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.ip-cidr-range-west
}

resource "google_compute_subnetwork" "subnet-east1" {
  name          = "${var.project}-subnet-${var.region-east}"
  region        = var.region-east
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.ip-cidr-range-east
}

