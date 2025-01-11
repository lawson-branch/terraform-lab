resource "google_storage_bucket" "gcp-bucket1" {
  name     = "nexedge-bucket-lawsonbucket1"
  location = "EUROPE-WEST1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}
