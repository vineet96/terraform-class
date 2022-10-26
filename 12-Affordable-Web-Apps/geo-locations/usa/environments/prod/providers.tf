terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.30.0"
    }
  }
  backend "gcs" {
    bucket      = "your gcs bucket"
    prefix      = ""
    credentials = "your service account json file location"
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