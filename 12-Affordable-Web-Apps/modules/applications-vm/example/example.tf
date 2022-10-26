module "compute_engine" {
  source = "../../../../modules/applications-vm"

  compute_name = var.compute_name
  machine_type = var.machine_type
  zone = var.zone
  image = var.image
  metadata_startup_script = "${path.module}/startup.sh"
  vpc = module.network.network_name
  subnet = "us-west1"
  region = var.region
  project = var.project

}