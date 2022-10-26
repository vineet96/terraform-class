variable "project" {
  description = "The ID of the Google Cloud project"
}

variable "credentials" {

}

variable "region" {
}

variable "zone" {
}

variable "vpc_name" {
}

variable "subnet_1" {
}

variable "subnet_2" {
}

variable "memory_storage_name" {
}

variable "memory_size_gb" {
}

variable "cloud_storage_name" {
}

variable "versioning" {
}

variable "tier" {
}

variable "compute_name" {
}

variable "machine_type" {
  default = "f1-micro"
}

variable "image" {
  default = "debian-cloud/debian-11"
}

variable "cloud_sql_name" {
}

variable "database_version" {
}

variable "db_tier" {
}