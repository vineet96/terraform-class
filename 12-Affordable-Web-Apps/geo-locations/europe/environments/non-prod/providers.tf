terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.30.0"
    }
  }
  backend "gcs" {
    bucket      = "tf-state-europe-non-prod"
    prefix      = ""
    credentials = "/Users/vineetagarwal/Downloads/affordable-dev-project-dfb27ca44cc2.json"
  }
}

provider "google" {
  credentials = var.credentials
  region      = var.region
  zone        = var.zone
  project     = var.project
}

provider "google-beta" {
  credentials = var.credentials
  region      = var.region
  zone        = var.zone
  project     = var.project
}