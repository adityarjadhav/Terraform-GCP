resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = <<-SCRIPT
    echo "Hello, this is a startup script!"
  SCRIPT
}

resource "google_compute_network" "my_vpc" {
  name = "my-vpc"
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.my_vpc.self_link
}

resource "google_compute_firewall" "my_firewall_ingress" {
  name      = "allow-ingress"
  network   = google_compute_network.my_vpc.name
  priority  = 1000
  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "my_firewall_egress" {
  name      = "allow-egress"
  network   = google_compute_network.my_vpc.name
  priority  = 1000
  direction = "EGRESS"

  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
}
