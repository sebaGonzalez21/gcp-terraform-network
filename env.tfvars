

### CONEXION A PROYECTO Y CUENTA DE SERVICIO
project_name = "name_proyect"
google_credential = "../cuenta-servicio/global-it-datalake.json"

### CREACION DE VPC NAME
name_network = "red-vpc-test"
auto_create_subnetworks = false

### CREACION DE SUB VPC NETWORK
display_name_network = {
	"display_network" = {
		name = "test-subnetwork"
		ip_cidr_range = "10.2.0.0/16",
		region =  "us-central1"
		range_name_secondary = "tf-test-secondary-range-update1"
		ip_cidr_range_secondary = "192.168.10.0/24"
	}
}

### HABILITACION DE API
api_service_project = {
	"api-cloud-storage"= {
		project = "labs-gitlab-zenta-001",
		service =  "storage.googleapis.com",
		disable_dependent_services =  true,
		disable_on_destroy =  true
	},
	#"api-cloud-pubsub"= {
	#	project = "labs-gitlab-zenta-001",
	#	service =  "pubsub.googleapis.com",
	#	disable_dependent_services =  true,
	#	disable_on_destroy =  true
	#},
	#"api-cloud-dataflow"= {
	#	project = "labs-gitlab-zenta-001",
	#	service =  "dataflow.googleapis.com",
	#	disable_dependent_services =  true,
	#	disable_on_destroy =  true
	#},
	#"api-cloud-bigquery"= {
	#	project = "labs-gitlab-zenta-001",
	#	service =  "bigquery.googleapis.com",
	#	disable_dependent_services =  true,
	#	disable_on_destroy =  true
	#}
}