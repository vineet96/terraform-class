project             = "your project id"
credentials         = "path to service account key json file"
vpc_name            = "affordable-webapplication-vpc-prod"
subnet_1            = "europe-north1-prod"
subnet_2            = "europe-west1-prod"
memory_storage_name = "memorystore-europe-north1-prod"
memory_size_gb      = 1
tier                = "BASIC"
cloud_storage_name  = "cloudstorage-europe-north1-prod"
versioning          = false


compute_name = "compute-engine-europe-north1-prod"
machine_type = "f1-micro"

image = "debian-cloud/debian-11"

cloud_sql_name = "cloudsql-europe-north1-prod"

database_version = "MYSQL_5_7"

db_tier = "db-f1-micro"




