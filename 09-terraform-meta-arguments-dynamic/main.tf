resource "google_compute_firewall" "rules" {
  name          = "my-firewall-rule"
  project       = var.project
  network       = var.vpc
  description   = "Creates firewall rule targeting tagged instances"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

}