locals {
  virtual_machines1 = ["ce1-locals", "ce2-locals"]
  virtual_machines2 = {
    "ce3-locals" = { vm_type = "e2-small", zone = "us-east1-b" }
    "ce4-locals" = { vm_type = "e2-medium", zone = "us-east1-c" }

  }
  image = "debian-cloud/debian-11"
  vpc   = "default"
}

resource "google_compute_instance" "main1" {
  for_each     = toset(["ce1-inline", "ce2-inline"])
  name         = each.key
  machine_type = "f1-micro"
  zone         = "us-west1-a"
  boot_disk {
    initialize_params {
      image = local.image
    }
  }
  network_interface {
    network = local.vpc
    access_config {
    }
  }
}

resource "google_compute_instance" "main2" {
  for_each = {
    "ce3-inline" = { vm_type = "e2-small", zone = "us-east1-b" }
  }
  name         = each.key
  machine_type = each.value.vm_type
  zone         = each.value.zone
  boot_disk {
    initialize_params {
      image = local.image
    }
  }
  network_interface {
    network = local.vpc
    access_config {
    }
  }
}

resource "google_compute_instance" "main3" {
  for_each     = toset(local.virtual_machines1)
  name         = each.key
  machine_type = "f1-micro"
  zone         = "us-west1-a"
  boot_disk {
    initialize_params {
      image = local.image
    }
  }
  network_interface {
    network = local.vpc
    access_config {
    }
  }
}

resource "google_compute_instance" "main4" {
  for_each     = local.virtual_machines2
  name         = each.key
  machine_type = each.value.vm_type
  zone         = each.value.zone
  boot_disk {
    initialize_params {
      image = local.image
    }
  }
  network_interface {
    network = local.vpc
    access_config {
    }
  }
}

resource "google_compute_instance" "main5" {
  for_each     = toset(var.virtual_machines1)
  name         = each.key
  machine_type = "f1-micro"
  zone         = "us-west1-a"
  boot_disk {
    initialize_params {
      image = local.image
    }
  }
  network_interface {
    network = local.vpc
    access_config {
    }
  }
}

resource "google_compute_instance" "main6" {
  for_each     = var.virtual_machines2
  name         = each.key
  machine_type = each.value.vm_type
  zone         = each.value.zone
  boot_disk {
    initialize_params {
      image = local.image
    }
  }
  network_interface {
    network = local.vpc
    access_config {
    }
  }
}

module "configured_compute_engine" {
  for_each     = var.virtual_machines3
  source       = "./modules/afforadable-compute-engine"
  ce_name      = each.key
  machine_type = each.value.vm_type
  zone         = each.value.zone
  image        = local.image
}





