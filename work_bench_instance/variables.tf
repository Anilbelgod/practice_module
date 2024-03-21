variable "network_name" {
  description = "Name of the Google Compute network"
  type        = string
}

variable "subnetwork_name" {
  description = "Name of the Google Compute subnetwork"
  type        = string
}

variable "subnetwork_region" {
  description = "Region for the Google Compute subnetwork"
  type        = string
}

variable "subnetwork_cidr" {
  description = "CIDR range for the Google Compute subnetwork"
  type        = string
}

variable "instance_name" {
  description = "Name of the Google Workbench instance"
  type        = string
}

variable "instance_location" {
  description = "Location of the Google Workbench instance"
  type        = string
}

variable "machine_type" {
  description = "Type of machine for the Google Workbench instance"
  type        = string
}

variable "accelerator_type" {
  description = "Type of accelerator for the Google Workbench instance"
  type        = string
}

variable "accelerator_core_count" {
  description = "Number of accelerator cores for the Google Workbench instance"
  type        = number
}


variable "enable_secure_boot" {
  type        = bool
}

variable "enable_vtpm"{
  type = bool
}

variable "enable_integrity_monitoring" {
  type = bool
}

variable "disable_public_ip"  {
  type = bool
}
    
variable "boot_disk_size_gb" {
  description = "Size of the boot disk for the Google Workbench instance (in GB)"
  type        = number
}

variable "boot_disk_type" {
  description = "Type of disk for the boot disk of the Google Workbench instance"
  type        = string
}

variable "boot_disk_encryption" {
  description = "Encryption type for the boot disk of the Google Workbench instance"
  type        = string
}

variable "boot_disk_kms_key" {
  description = "KMS key for encrypting the boot disk of the Google Workbench instance"
  type        = string
}

variable "data_disk_size_gb" {
  description = "Size of the data disk for the Google Workbench instance (in GB)"
  type        = number
}

variable "data_disk_type" {
  description = "Type of disk for the data disk of the Google Workbench instance"
  type        = string
}

variable "data_disk_encryption" {
  description = "Encryption type for the data disk of the Google Workbench instance"
  type        = string
}

variable "data_disk_kms_key" {
  description = "KMS key for encrypting the data disk of the Google Workbench instance"
  type        = string
}

variable "instance_service_account_email" {
  description = "Email of the service account for the Google Workbench instance"
  type        = string
}

variable "nic_type" {
  description = "Type of network interface for the Google Workbench instance"
  type        = string
}

variable "tags" {
  description = "Tags for the Google Workbench instance"
  type        = list(string)
}

variable "instance_owners" {
  description = "List of owners for the Google Workbench instance"
  type        = list(string)
}

variable "labels" {
  description = "Labels for the Google Workbench instance"
  type        = map(string)
  default = { }
}

variable "desired_state" {
  description = "Desired state for the Google Workbench instance"
  type        = string
}

variable "disable_proxy_access" {
  description = "Flag to disable proxy access for the Google Workbench instance"
  type        = bool
  default     = true
}

variable "enable_ip_forwarding" {
  description = "Flag to enable IP forwarding for the Google Workbench instance"
  type        = bool
  default     = true
}

variable "metadata" {
  description = "Metadata for the Google Workbench instance"
  type        = map(string)
  default     = { terraform = "true" }
}
