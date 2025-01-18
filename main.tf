terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "project-lawson"
  credentials = file("project-lawson-5dcbcae420bf.json")
}
