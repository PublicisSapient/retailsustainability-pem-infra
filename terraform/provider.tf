terraform {
    backend "gcs" {
   bucket  = "pem-project-bucket-tfstate"
   prefix  = "terraform/state"
 }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.8.0"
    }
  }
}


provider "google" {
  region      = "asia-south2"
  project     = "sap-p2p-marketplace-dev-mg"
}


resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "pem-project-bucket-tfstate"
  force_destroy = false
  location      = var.region
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}