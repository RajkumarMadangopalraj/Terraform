resource "google_compute_network" "vpc_network" {
  name = "gcp-terraform-network"
}

resource "google_compute_firewall" "vpc_network" {
  name    = "gcp-terraform-firewall"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

#  source_tags = ["sshallow"]
}

