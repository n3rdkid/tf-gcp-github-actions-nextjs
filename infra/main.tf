# Creating an App engine application
resource "google_app_engine_application" "app" {
  project     = "${var.project}"
  location_id = "${var.region}"
}
# 
resource "google_app_engine_standard_app_version" "app_engine_next" {
  version_id = "v1"
  service    = "default"
  runtime    = "nodejs14"

  deployment={
    zip{
      source_url = {var.artifacts_url}
    }
  }

  delete_service_on_destroy = true
}