data "google_compute_network" "main" {
  name = var.vpc_name
}

resource "google_compute_global_address" "private_ip_address" {
  name          = "private-ip-address"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = data.google_compute_network.main.id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network       = data.google_compute_network.main.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}

resource "google_sql_database_instance" "instance" {
  name             = var.cloud_sql_name
  region           = var.region
  database_version = var.database_version
  depends_on = [google_service_networking_connection.private_vpc_connection]
  settings {
    tier = var.db_tier
    ip_configuration {
      ipv4_enabled    = false
      private_network = data.google_compute_network.main.id
    }
  }
  lifecycle {
    prevent_destroy = true
  }
  deletion_protection = false
  
}

