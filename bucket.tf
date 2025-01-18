resource "google_storage_bucket" "gcp-bucket" {
  name     = "nexedge-bucket-lawson2020"
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket1" {
  name     = "nexedge-bucket-lawsonbucket1"
  location = "EUROPE-WEST1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket2" {
  name     = "nexedge-bucket-lawsonbucket2"
  location = "EUROPE-NORTH1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}
