output "google_compute_instance_id" {
  value = google_compute_instance.default1.instance_id
}

output "google_compute_cpu_platform" {
  value = google_compute_instance.default1.cpu_platform
}

output "google_compute_everything" {
  value     = google_compute_instance.default1
  sensitive = true
}