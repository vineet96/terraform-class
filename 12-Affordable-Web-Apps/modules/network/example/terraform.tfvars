vpc_name = "affordable-webapplication-vpc"

subnets = {
    us-west1 = {
        region = "us-west1"
        ip_cidr_range = "10.10.0.0/28"
    },
     us-east1 = {
        region = "us-east1"
        ip_cidr_range = "10.20.0.0/28"
    }
}

firewalls = {
    allow-http = {
        protocol = "tcp"
        ports = ["80"]
        target_tags = ["http-server"]
        source_ranges = ["0.0.0.0/0"]
    },
     allow-https = {
        protocol = "tcp"
        ports = ["443"]
        target_tags = ["https-server"]
        source_ranges = ["0.0.0.0/0"]
    },
    allow-ssh = {
        protocol = "tcp"
        ports = ["22"]
        target_tags = ["ssh"]
        source_ranges = ["0.0.0.0/0"]
    }
}