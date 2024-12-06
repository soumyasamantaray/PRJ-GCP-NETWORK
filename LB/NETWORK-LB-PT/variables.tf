variable "ilb_network" {
  description = "The name of the VPC network"
  type        = string
  
}

variable "ilb_subnet" {
  description = "The name of the subnet"
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

variable "ilb_zone" {
  description = "The zone in which to create the ILB"
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