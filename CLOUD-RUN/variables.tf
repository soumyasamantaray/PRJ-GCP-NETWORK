variable "project_id" {
  description = "The project ID to deploy resources"
  type        = string
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
}

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