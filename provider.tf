provider "google" {
  project     = var.project
  region      = "us-central1"
  credentials = file("pruthvi-terraform-sa.json")
}

terraform {
  /* backend "gcs" {
    bucket = "mobili"
    prefix = "terraform/state"
    
  }
  */
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
