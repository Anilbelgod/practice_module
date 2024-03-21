resource "google_compute_network" "my_network" {
  name = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnetwork" {
  name   = var.subnetwork_name
  network = google_compute_network.my_network.id
  region = var.subnetwork_region
  ip_cidr_range = var.subnetwork_cidr
}

resource "google_workbench_instance" "instance" {
  name = var.instance_name
  location = var.instance_location

  gce_setup {
    machine_type = var.machine_type // cant be e2 because of accelerator
    accelerator_configs {
      type         = var.accelerator_type
      core_count   = var.accelerator_core_count
    }

    shielded_instance_config {
      enable_secure_boot = var.enable_secure_boot
      enable_vtpm = var.enable_vtpm
      enable_integrity_monitoring = var.enable_integrity_monitoring
    }

    disable_public_ip = var.disable_public_ip

    service_accounts {
      email = var.instance_service_account_email
    }

    boot_disk {
      disk_size_gb  = var.boot_disk_size_gb
      disk_type = var.boot_disk_type
      disk_encryption = var.boot_disk_encryption
      kms_key = var.data_disk_kms_key
    }

    data_disks {
      disk_size_gb  = var.data_disk_size_gb
      disk_type = var.data_disk_type
      disk_encryption = var.data_disk_encryption
      kms_key = var.data_disk_kms_key
    }

    network_interfaces {
      network = google_compute_network.my_network.id
      subnet = google_compute_subnetwork.my_subnetwork.id
      nic_type = var.nic_type
    }

    metadata = var.metadata

    enable_ip_forwarding = var.enable_ip_forwarding

    tags = var.tags

  }

  disable_proxy_access = var.disable_proxy_access

  instance_owners  = var.instance_owners

  labels = var.labels
  desired_state = var.desired_state

}