project      = "replace with your GCP project id" 
credentials  = "Replace with path to service account json key file"

example 

project     = "affordable-dev-project"
credentials = "~/Downloads/affordable-dev-project-dfb27ca44cc2.json"

backend "gcs" {
    bucket      = "replace with your gcs bucket"
    prefix      = ""
    credentials = "~/Downloads/affordable-dev-project-dfb27ca44cc2.json"
  }