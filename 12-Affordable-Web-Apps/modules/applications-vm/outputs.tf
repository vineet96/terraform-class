output "compute_instance_name" {
    value = google_compute_instance.main.name
}

output "compute_instance_id" {
    value = google_compute_instance.main.instance_id
}

output "compute_instance_hostname" {
    value = google_compute_instance.main.hostname
}