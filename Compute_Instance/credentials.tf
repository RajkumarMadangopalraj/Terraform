provider "google" {
  credentials = file("/Path/to/your/credentials/path/<filename>.json")

  project = "YOURPROJECTNAME"
  region  = "us-central1"
  zone    = "us-central1-c"
}
