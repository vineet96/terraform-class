project            = "your project id"
credentials        = "path to service account key jason file"
region             = "us-west1"
zone               = "us-west1-a"
ip-cidr-range-west = "10.10.0.0/28"

gke_cluster_name_staging    = "gke-staging-hr"
gke_cluster_name_production = "gke-production-hr"
pods_per_nodes_staging      = 50
pods_per_nodes_production   = 50
gke_num_nodes               = 1

google_container_node_pool_name_production = "gke-noodpool-production-hr"
google_container_node_pool_name_staging    = "gke-noodpool-staging-hr"

machine_type_production = "n1-standard-1"
machine_type_staging    = "n1-standard-1"

memory_storage_name_production = "memorystore-production-hr"
memory_storage_name_staging    = "memorystore-staging-hr"
memory_size_gb_production      = 1
memory_size_gb_staging         = 1
memeory_tier_production        = "BASIC"
memeory_tier_staging           = "BASIC"

cloud_storage_name_staging    = "your cloud storage name in staging"
cloud_storage_name_production = "your cloud storage name in production"
