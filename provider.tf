terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.10.0"
    }
  }

provider "google" {
  credentials = file("<path-to-your-service-account-key-file>.json")  # Path to your GCP service account key JSON file
  project     = "vaulted-circle-404807 " 
  region      = "us-central1"      
}
