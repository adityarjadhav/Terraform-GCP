# variables.tf
variable "instance_type" {
  description = "The machine type for the instance"
  type        = string
  default     = "n1-standard-1"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "my-vpc"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "my-subnet"
}

variable "subnet_cidr" {
  description = "The CIDR range for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "firewall_ports" {
  description = "List of ports to allow in the firewall ingress rule"
  type        = list(string)
  default     = ["22", "80", "443"]
}
