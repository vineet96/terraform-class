project      = "replace with your GCP project id" 
credentials  = "Replace with path to service account key file.json"

example 

project     = "affordable-dev-project"
credentials = "~/Downloads/affordable-dev-project-dfb27ca44cc2.json"

backend "gcs" {
    bucket      = "replace with your GCS bucket"
    prefix      = "terraform/state"
    credentials = "replace with the path to service account key file.json  var does not work withing gcs backened"
}