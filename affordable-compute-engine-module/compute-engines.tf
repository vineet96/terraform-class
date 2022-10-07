module "configured_compute_engine" {
  source = "github.com/vineet96/afforadable-compute-engine.git"

  ce_name = "compute-engine-west"
  machine_type = var.machine_type
  zone = var.zone_west1
  image = var.image
  metadata_startup_script = "${path.module}/startup.sh"
  vpc = google_compute_network.vpc.self_link
  subnet = google_compute_subnetwork.subnet-west1.self_link
  static_ip_name = "static-ip-west"
  region = var.region-west

}

module "configured_compute_engine_east" {
  source = "github.com/vineet96/afforadable-compute-engine.git"

  ce_name = "compute-engine-east"
  machine_type = var.machine_type
  zone = var.zone_east1
  image = var.image
  metadata_startup_script = "${path.module}/startup.sh"
  vpc = google_compute_network.vpc.self_link
  subnet = google_compute_subnetwork.subnet-east1.self_link
  static_ip_name = "static-ip-east"
  region = var.region-east

}