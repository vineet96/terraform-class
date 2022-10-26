variable "memory_size_gb" {
    default = 1
}

variable "tier" {
    default = "BASIC" 
}

variable "memory_storage_name" {
   default = "memorystorage"
}

variable "project" {
}

variable "region" {
  default = "us-west1"
}

variable "vpc_name" {
}

variable "cloud_storage_name" {
}

variable "versioning" {
    default = false
  
}

variable "cloud_sql_name" {
}

variable "database_version" {
}

variable "db_tier" { 
}

variable "enable_apis" {
  default = true
}