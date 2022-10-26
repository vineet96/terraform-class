variable "project" {

}

variable "region" {

}

variable "zone" {

}

variable "credentials" {

}

variable "vpc" {
  default = "default"
}

variable "allow_list" {
  type = map(object({
    protocol = string
    ports    = list(string)

  }))

  default = {
    "allow1" = { protocol = "tcp", ports = ["80", "8080"] }
    "allow2" = { protocol = "tcp", ports = ["22"] }
    "allow3" = { protocol = "tcp", ports = ["443"] }
  }
}

