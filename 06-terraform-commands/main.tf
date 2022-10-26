terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.30.0"

    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

  }
  backend "gcs" {
    bucket      = "your GCS bucket"
    prefix      = "terraform/state"
    credentials = "path to your dowloaded service account key file json file"
  }
}

provider "google" {
  region      = var.region
  zone        = var.zone
  project     = var.project
  credentials = var.credentials
}

provider "aws" {
  region = "us-east-1"
}


module "gcs_buckets" {
  source     = "terraform-google-modules/cloud-storage/google"
  project_id = var.project
  names      = ["first", "second"]
  prefix     = "my-unique-prefix"

}















