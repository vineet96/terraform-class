terraform {
  		required_providers {
   			 google = {
      	     source  = "hashicorp/google"
     		 version = ">= 4.30.0"
    		 }
  		 }
}


resource "google_project_service" "main"{
	project =  var.project
    service =  "compute.googleapis.com"
    disable_dependent_services = true
    disable_on_destroy  = false
  }

resource "google_compute_instance" "main" {
  name         = var.compute_name
  machine_type = var.machine_type
  zone = var.zone
  tags         = ["ssh","http-server","https-server"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  metadata_startup_script = var.metadata_startup_script
  
  network_interface {
    network = var.vpc
    subnetwork = var.subnet
    access_config {
    }
  }
}