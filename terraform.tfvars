project_id           = "prj-gcp-network"
region               = "us-central1"
network_name         = "prj-vpc-qa1"
subnet_name          = "prj-vpc-qa1-subent1"
#terraform_version    = "6.12.0"
credentials          = "prj-gcp-network-276e2fd0f20f.json"
subnet_cidr          = "10.0.0.0/16"
source_ranges        = ["10.0.0.0/16"]


################## VM ##################
# vm_name                 = "prj-vm-qa"
# vm_image                = "debian-cloud/debian-11"
# vm_machine_type         = "e2-micro"
# vm_zone                 = "us-central1-a"
# vm_tags                 = ["qa"]
# # vm_network           = "prj-vpc-qa1"

################## Bucket ##################

bucket_name             = "prj-gcp-network-qa-bucket"
bucket_location         = "US"

################## L4 NETWORK ILB PASSTHROUGH  ##################

ilb_network             = "l4-ilb-network"
ilb_subnet              = "l4-ilb-subnet"
ip_cidr_range           = "10.0.1.0/24"
lb_region               = "us-central1"
lb_forwarding_rule_name = "l4-ilb-forwarding-rule"
ilb_zone                = "us-central1-a"
l4_pt_health_check      = "l4-ilb-hc"
l4_backend_service_name = "l4-ilb-backend-subnet"
#health_checks           = ["l4-ilb-hc"]

################## L4 NETWORK ILB PROXY  ##################

# region               = "us-central1"
# network_name         = "prj-vpc-qa1"
# subnet_name          = "prj-vpc-qa1-subent1"
# credentials          = "prj-gcp-network-276e2fd0f20f.json"
vm_name              = "l4-lb-p-instance"
vm_image             = "debian-cloud/debian-11"
vm_machine_type      = "e2-micro"
vm_zone              = "us-central1-a"
vm_tags              = ["qa"]


#################### CLOUD RUN ####################

service_name = "prj-cloud-run-service"
image        = "gcr.io/cloudrun/hello"
#region       = "us-central1"
memory       = "256Mi"
cpu          = "1"
