provider "google" {
  project = "devops-374009"
  region  = "us-central1"
  
}

terraform {
  backend "gcs" {
    bucket = "trail001"
    prefix = "terraform/state"
    credentials = "/home/muzammil01vivekengg/compute.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
