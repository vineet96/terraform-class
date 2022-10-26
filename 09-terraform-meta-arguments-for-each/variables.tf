variable "project" {

}

variable "region" {

}

variable "zone" {

}

variable "credentials" {

}

variable "virtual_machines1" {
  type    = set(string)
  default = ["ce1-var"]
}

variable "virtual_machines2" {
  type = map(object({
    vm_type = string
    zone    = string

  }))


  default = {
    "ce3-var" = { vm_type = "e2-small", zone = "us-west1-a" }
    "ce4-var" = { vm_type = "e2-medium", zone = "us-west1-b" }
  }
}

variable "virtual_machines3" {
  type = map(object({
    vm_type = string
    zone    = string

  }))


  default = {
    "ce1-module" = { vm_type = "e2-small", zone = "us-west1-a" }
  }
}

