resource "google_compute_instance" "vm_instance" {
  name         = var.compute_instance_name[count.index]
  count        = 3
  machine_type = "e2-medium"

  metadata = {
    sshKeys = "terraform:${file("/Users/rajkumar/Desktop/Mystuffs/Terraform/Keypair/id_rsa.pub")}"
  }

  boot_disk {
    initialize_params {
      image = "centos-7-v20200403"
      size  = "30"
    }
  }

#  tags = ["sshallow"]

  network_interface {
    network = "gcp-terraform-network"
    access_config {
    }
  }
}

