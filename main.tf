

## Adding module for VPC ###

# module "VPC" {
#   source = "./VPC"

#   project_id          = var.project_id
#   region              = var.region
#   network_name        = var.network_name
#   subnet_name         = var.subnet_name
#   source_ranges       = var.source_ranges
#   subnet_cidr         = var.subnet_cidr
# }

## Adding module for VM ###

# module "VM" {
#   source = "./VM"

#  network_name         = var.network_name
#  subnet               = var.subnet_name
#  vm_name              = var.vm_name
#  vm_image             = var.vm_image
#  vm_machine_type      = var.vm_machine_type
#  vm_zone              = var.vm_zone
  
# }

# ## Adding module for Storage ###

# module "bucket" {
#   source = "./STORAGE"

#   bucket_name         = var.bucket_name
#   bucket_location     = var.bucket_location
  
# }


# module "network_l4_ilb_passthrough" {
#   source              = "./LB/NETWORK-LB-PT"

#   lb_forwarding_rule_name                  = var.lb_forwarding_rule_name
#   ilb_subnet                               = var.ilb_subnet
#   ilb_network                              = var.ilb_network
#   ilb_zone                                 = var.ilb_zone
#   lb_region                                = var.lb_region
#   l4_pt_health_check                       = var.l4_pt_health_check
#   ip_cidr_range                            = var.ip_cidr_range
#   l4_backend_service_name                  = var.l4_backend_service_name

# }

# module "network_l4_ilb_proxy" {
  
#   source                                    = "./LB/NETWORK-LB-PROXY"


  
#   vm_name                                   = var.vm_name
#   project_id                                = var.project_id 
#   credentials                               = var.credentials
#   region                                    = var.region 
#   vm_zone                                   = var.vm_zone
#   vm_image                                  = var.vm_image
#   vm_machine_type                           = var.vm_machine_type
#   subnet_name                               = var.subnet_name
#   network_name                              = var.network_name

# }


module "cloud_run" {
  source       = "./CLOUD-RUN"
  project_id   = var.project_id
  region       = var.region
  service_name = var.service_name
  image        = var.image
  memory       = var.memory
  cpu          = var.cpu
}