variable "project" {
  description = "The ID of the Google Cloud project"
}

variable "credentials" {
  description = "Path to the JSON file used to describe your account credentials"
  sensitive   = true
}

variable "region" {
  default = "us-west1"
}

variable "zone" {
  default = "us-west1-a"
}

variable "machine_type" {
  default = "f1-micro"
}

variable "image" {
  default = "debian-cloud/debian-11"
}
