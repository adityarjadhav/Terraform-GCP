# outputs.tf
output "instance_ips" {
  description = "The public IP addresses of the instances"
  value       = google_compute_instance.my_instance[*].network_interface[*].access_config[*].nat_ip
}
