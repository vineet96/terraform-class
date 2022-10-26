module project-services {
 source  = "terraform-google-modules/project-factory/google//modules/project_services"
 version = "~> 14.0"
 project_id  = var.project
 enable_apis = var.enable_apis
 activate_apis = [
   		"cloudresourcemanager.googleapis.com",
        "servicenetworking.googleapis.com",
        "sql-component.googleapis.com",
        "sqladmin.googleapis.com",
        "redis.googleapis.com"
]
disable_services_on_destroy = false
}

terraform {
  		required_providers {
   			 google = {
      	     source  = "hashicorp/google"
     		 version = ">= 4.30.0"
    		 }
  		 }
}
