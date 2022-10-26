variable "project" {
}

variable "credentials" {

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
    protocol      = string
    ports         = list(string)
    target_tags   = list(string)
    source_ranges = list(string)

  }))
}












