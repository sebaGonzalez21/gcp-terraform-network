## Creacion de recursos
# Enable services in newly created GCP Project.
resource "google_project_service" "gcp_api_service" {
  for_each = var.api_service_project
  project = each.value.project
  service = each.value.service
  disable_dependent_services = each.value.disable_dependent_services
  disable_on_destroy = each.value.disable_on_destroy
}