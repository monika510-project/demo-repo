resource "google_project" "my_project" {
  name            = "my-project"
  project_id      = "demo-prj-tf"
 #org_id          = "<your_organization_id>"
 #billing_account = "<your_billing_account_id>"
}

resource "google_project_service" "service" {
  project = google_project.my_project.project_id
  service = "compute.googleapis.com"
}
resource "google_project_service" "service2" {
  project = google_project.my_project.project_id
  service = "iam.googleapis.com"
}

resource "google_project_service" "service3" {
  project = google_project.my_project.project_id
  service = "dns.googleapis.com"
}

output "project_id" {
  value = google_project.my_project.project_id
}
