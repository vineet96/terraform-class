module "data" {
    source = "../../../../modules/data"
    memory_storage_name = var.memory_storage_name
    memory_size_gb = var.memory_size_gb
    tier  = var.tier
    project = var.project
    vpc_name = var.vpc_name
    cloud_storage_name = var.cloud_storage_name
    versioning = false
    cloud_sql_name = var.cloud_sql_name
    database_version = var.database_version
    db_tier = var.db_tier
    enable_apis = var.enable_apis

}