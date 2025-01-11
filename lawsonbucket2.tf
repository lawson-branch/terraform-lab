resource "google_storage_bucket" "gcp-bucket2" {
  name     = "nexedge-bucket-lawsonbucket2"
  location = "EUROPE-NORTH1"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}
