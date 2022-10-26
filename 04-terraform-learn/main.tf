terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"

    }
  }
  backend "gcs" {
    bucket      = "your GCS bucket"
    prefix      = "terraform/state"
    credentials = "path to service account key file.json"
  }
}

provider "google" {
  region      = var.region
  zone        = var.zone
  project     = var.project
  credentials = var.credentials

}

locals {
  application_name = "microservice1"
  environement     = "staging"
}

resource "google_compute_instance" "default1" {
  name         = "terraform-instance1"
  machine_type = var.machine_type
  labels = {
    application_name = local.application_name
    environement     = local.environement
  }

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq nginx; sudo service nginx restart"

  network_interface {
    network = "default"
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}

resource "google_compute_instance" "default2" {
  name         = "terraform-instance2"
  machine_type = var.machine_type
  labels = {
    application_name = local.application_name
    environement     = local.environement
  }
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq nginx; sudo service nginx restart"
  network_interface {
    network = "default"
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}