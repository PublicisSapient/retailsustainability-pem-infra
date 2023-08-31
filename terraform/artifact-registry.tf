resource "google_project_service" "artifact-registry-api" {
  service = "artifactregistry.googleapis.com"
}

resource "google_artifact_registry_repository" "pem-artifact-registry" {
  provider      = google-beta
  location      = var.region
  repository_id = var.artifact_registry_name
  description   = "docker repository for PEM project"
  format        = "DOCKER"

  depends_on = [
    google_project_service.artifact-registry-api
  ]
}
