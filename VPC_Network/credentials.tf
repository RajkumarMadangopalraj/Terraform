provider "google" {
  credentials = file("/PATH/TO/YOUR/FILE.json")

  project = "PROJECTNAME"
  region  = "us-central1"
  zone    = "us-central1-a"
}
