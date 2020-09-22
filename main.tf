## Provedor al que realizara la conexion
provider "google" {
   project = var.project_name
   credentials = var.google_credential
}

## HABILITACION DE APIS
#module "api_project_services_business" {
#   source = "./modules/api-service-gcp"
#   api_service_project = var.api_service_project
#}

## CREACION DE VPC NETWORK
module "api_project_vpc_network" {
   source = "./modules/network/vpc-network/"
   name_network = var.name_network
   auto_create_subnetworks = var.auto_create_subnetworks
}

## CREACION DE SUB NETWORK
module "api_project_sub_network" {
   source = "./modules/network/sub-network/"
   display_name_network = var.display_name_network
   network = module.api_project_vpc_network.id
}