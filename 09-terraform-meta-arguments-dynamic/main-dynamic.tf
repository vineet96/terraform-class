resource "google_compute_firewall" "rules1" {
  project       = var.project
  name          = "my-firewall-rule-dynamic"
  network       = var.vpc
  description   = "Creates firewall rule targeting tagged instances"
  source_ranges = ["0.0.0.0/0"]

  dynamic "allow" {
    for_each = var.allow_list
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports

    }
  }
}