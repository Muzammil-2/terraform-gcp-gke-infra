provider "google" {
  project = "devops-374009"
  region  = "us-central1"
  credentials = file("web.json")
  
}

terraform {
  backend "gcs" {
    bucket = "mobili"
    prefix = "terraform/state"
    
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
