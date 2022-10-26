vpc_name    = "affordable-webapplication-vpc-prod"
project     = "your project id"
credentials = "path to service account key json file"

subnets = {
  us-west1-prod = {
    region        = "us-west1"
    ip_cidr_range = "10.10.0.0/28"
  },
  us-east1-prod = {
    region        = "us-east1"
    ip_cidr_range = "10.20.0.0/28"
    }, 
  europe-north1-prod = {
    region        = "europe-north1"
    ip_cidr_range = "10.30.0.0/28"
    }, 
  europe-west1-prod = {
    region        = "europe-west1"
    ip_cidr_range = "10.40.0.0/28"
  }
}

firewalls = {
  allow-http-non-prod = {
    protocol      = "tcp"
    ports         = ["80"]
    target_tags   = ["http-server"]
    source_ranges = ["0.0.0.0/0"]
  },
  allow-https-non-prod = {
    protocol      = "tcp"
    ports         = ["443"]
    target_tags   = ["https-server"]
    source_ranges = ["0.0.0.0/0"]
  },
  allow-ssh-non-prod = {
    protocol      = "tcp"
    ports         = ["22"]
    target_tags   = ["ssh"]
    source_ranges = ["0.0.0.0/0"]
  }
}


