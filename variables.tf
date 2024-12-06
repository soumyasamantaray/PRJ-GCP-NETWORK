variable "project_id" {
  description = "The ID of the project in which to create the VPC"
  type        = string
  
}

variable "region" {
  description = "The region in which to create the VPC"
  type        = string
  
}

variable "vm_zone" {
  description = "The zone in which to create the VM"
  type        = string
  
}
variable "credentials" {
  description = "Credentials"
  type = string

}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
  
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string

}

variable "source_ranges" {
  description = "The range of IP addresses to allow for ingress traffic"
  type        = list(string)
  
}

variable "vm_name" {
  description = "value of the vm name"
  type = string
}

variable "vm_image" {
  description = "value of the image"
  type = string
}

variable "vm_machine_type" {
  description = "value of the machine type"
  type = string
  
}

variable "vm_tags" {
  description = "value of the tags"
  type = list(string)
  
}

variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
  
}

variable "bucket_location" {
  description = "The location of the bucket"
  type        = string
  
}

variable "ilb_network" {
  description = "The name of the VPC network"
  type        = string
  
}

variable "ilb_subnet" {
  description = "The name of the subnet"
  type        = string
  
}

variable "ilb_zone" {
  description = "The zone in which to create the ILB"
  type        = string
  
}

variable "ip_cidr_range" {
  description = "The CIDR block for the subnet"
  type        = string
  
}

variable "lb_region" {
  description = "The region of the load balancer"
  type        = string
  
}

variable "lb_forwarding_rule_name" {
  description = "value of the forwarding rule name"
  type        = string
  
}

variable "l4_pt_health_check" {
  description = "value of the health check"
  type        = string
  
}

variable "l4_backend_service_name" {
  description = "The name of the backend service"
  type        = string
  
}

# variable "health_checks" {
#   description = "The name of the health check"
#   type        = string
  
# }

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "image" {
  description = "The container image to deploy"
  type        = string
}

variable "memory" {
  description = "The amount of memory to allocate to the container"
  type        = string
  default     = "512Mi"
}

variable "cpu" {
  description = "The amount of CPU to allocate to the container"
  type        = string
  default     = "1"
}