variable "project_id" {
  description = "The project ID to deploy resources"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
}

variable "credentials" {
  description = "The path to the service account key file"
  type        = string
}

variable "vm_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "vm_image" {
  description = "The image to use for the VM instance"
  type        = string
}

variable "vm_machine_type" {
  description = "The machine type to use for the VM instance"
  type        = string
}

variable "vm_zone" {
  description = "The zone to deploy the VM instance"
  type        = string
}

variable "network_name" {
  description = "The name of the network to attach the VM instance"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnetwork to attach the VM instance"
  type        = string
}

variable "vm_tags" {
  description = "Tags to apply to the VM instance"
  type        = list(string)
  default     = []
}