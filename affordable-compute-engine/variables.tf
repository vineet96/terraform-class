variable "project_id" {
 description = "The ID of the Google Cloud project"
 default = "affordable-dev-project"
}

variable "credentials" {
  default = "/Users/vineetagarwal/Downloads/affordable-dev-project-dfb27ca44cc2.json"
}


variable "region-west"{
  default = "us-west1"
}

variable "region-east"{
  default = "us-east1"
}

variable "zone_west1"{
  default = "us-west1-a"
}

variable "zone_east1" {
  default = "us-east1-b"
}

variable "ip-cidr-range-west" {
 
 default = "10.10.0.0/24"
}

variable "ip-cidr-range-east" {
 
 default = "10.20.0.0/24"
}

variable "machine_type" {
 default = "f1-micro"
}

variable "image" {
 default = "debian-cloud/debian-11"
}


