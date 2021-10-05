provider "google" {
  credentials = file("/Users/rajkumar/Desktop/Mystuffs/Terraform/Key/kubernetes-practise-326615-a00f95561a30.json")

  project = "kubernetes-practise-326615"
  region  = "us-central1"
  zone    = "us-central1-c"
}
