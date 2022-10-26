variable "project" {
 description = "The ID of the Google Cloud project"
 default = "affordable-dev-project"
}

variable "credentials" {
  default = "/Users/vineetagarwal/Downloads/affordable-dev-project-dfb27ca44cc2.json"
}

variable "region" {
  default = "us-west1"
}

variable "zone" {
  default = "us-west1-a"
}

variable "vpc_name" {
  
}

variable "subnets" {
  type = map(object({
    region        = string
    ip_cidr_range = string
    
  }))
}

variable "firewalls" {
  type = map(object({
    protocol = string
    ports = list(string)
    target_tags = list(string)
    source_ranges = list(string)
    
  }))
}

