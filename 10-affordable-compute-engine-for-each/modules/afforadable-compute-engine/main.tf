resource "google_compute_instance" "vm_instance" {
  name         = var.ce_name
  machine_type = var.machine_type
  zone = var.zone
  tags         = ["ssh","http-server","https-server"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  metadata_startup_script = file(var.metadata_startup_script)
  
  network_interface {
    network = var.vpc
    subnetwork = var.subnet
    access_config {
        nat_ip = google_compute_address.vm_static_ip.address
    }
  }
}

resource "google_compute_address" "vm_static_ip" {
  name = var.static_ip_name
  region = var.region
  
}

