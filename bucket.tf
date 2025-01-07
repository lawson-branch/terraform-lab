resource "google_storage_bucket" "gcp-bucket" {
  name     = "nexedge-bucket-lawson2020"
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}