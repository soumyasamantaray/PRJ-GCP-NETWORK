variable "project_id" {
  description = "The ID of the project in which to create the VPC"
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
#  default     = "prj-vpc-qa1"
}

variable "region" {
  description = "The region in which to create the VPC"
  type        = string
#  default     = "us-central1"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
#  default    = "prj-vpc-qa1-subent1"
  
}
variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
#  default    = "10.0.0.0/16"
}

variable "source_ranges" {
  description = "The range of IP addresses to allow for ingress traffic"
  type        = list(string)
# default     = ["10.0.0.0/16"]
  
}

variable "firewall_name" {
  description = "value of the firewall name"
  type        = string
  default = "prj-vpc-qa1-allow-ssh"
}