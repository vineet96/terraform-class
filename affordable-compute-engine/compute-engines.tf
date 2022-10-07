resource "google_compute_instance" "vm_instance_west" {
  name         = "affordable-compute-west1"
  machine_type = var.machine_type
  zone = var.zone_west1
  tags         = ["ssh","http-server","https-server"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  metadata_startup_script = file("${path.module}/startup.sh")
  
  network_interface {
    network = google_compute_network.vpc.self_link
    subnetwork = google_compute_subnetwork.subnet-west1.self_link
    access_config {
        nat_ip = google_compute_address.vm_static_ip.address
    }
  }
}

resource "google_compute_address" "vm_static_ip" {
  name = "affordable-static-ip-west"
  region = var.region-west
  
}

resource "google_compute_instance" "vm_instance_east" {
  name         = "affordable-compute-east1"
  machine_type = var.machine_type
  zone = var.zone_east1
  tags         = ["ssh","http-server","https-server"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  metadata_startup_script = file("${path.module}/startup.sh")
  
  network_interface {
    network = google_compute_network.vpc.self_link
    subnetwork = google_compute_subnetwork.subnet-east1.self_link
    access_config {
        nat_ip = google_compute_address.vm_static_ip_east.address
    }
  }
}

resource "google_compute_address" "vm_static_ip_east" {
  name = "affordable-static-ip-east"
  region = var.region-east

}
