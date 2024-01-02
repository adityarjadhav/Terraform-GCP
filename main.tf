resource = "goggle_compute_instance" "vm-instance-terraform" {
name = "vm-instance-terraform"
machine_type = "e2_median"
zone = "us-central1-a"
 boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" 
    }
   labels {
      my_label = "value"
  } 
 }
} 
