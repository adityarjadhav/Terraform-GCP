# terraform.tfvars
instance_type  = "n1-standard-1"
vpc_name       = "my-vpc"
subnet_name    = "my-subnet"
subnet_cidr    = "10.0.1.0/24"
firewall_ports = ["22", "80", "443"]
