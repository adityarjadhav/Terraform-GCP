## Introduction
This Terraform configuration is designed to provision resources on Google Cloud Platform (GCP). It leverages the Google provider to manage infrastructure as code

## Prerequisites
Before running Terraform commands, ensure you have the following:
- GCP Service Account key file (JSON format) named `keys.json` in the project directory.

## Configuration
1. Adjust the `provider "google"` block in `main.tf` with your specific GCP project details.
2. Run `terraform init` to initialize the working directory.
3. Execute `terraform apply` to create or update resources on GCP.
