variable "compute_name" {
}
variable "region"{
  default = "us-west1"
}

variable "zone"{
  default = "us-west1-a"
}

variable "machine_type" {
 default = "f1-micro"
}

variable "image" {
 default = "debian-cloud/debian-11"
}

variable "vpc" { 
}

variable "subnet" { 
}

variable "metadata_startup_script" {
}

variable "project" {
  
}