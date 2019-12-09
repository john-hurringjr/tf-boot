/**
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/******************************************
  APIs
 *****************************************/

resource "google_project_service" "enable_pubsub_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "pubsub.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_compute_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "compute.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_bigtable_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "bigtable.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_bigquery_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "bigquery.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_logging_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "logging.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_cloudkms_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "cloudkms.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_storage_component_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "storage-component.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_storage_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "storage-api.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_storage_transfer_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "storagetransfer.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_dataflow_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "dataflow.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_cloudbuild_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "cloudbuild.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_cloudfunctions_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "cloudfunctions.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_cloudrun_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "run.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_gke_api" {
  depends_on          = [google_project.project, google_project_service.enable_compute_api]
  project             = google_project.project.project_id
  service             = "container.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_binaryauthorization_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "binaryauthorization.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_oslogin_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "oslogin.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_serviceusage_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "serviceusage.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_servicemanagement_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "servicemanagement.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_billing_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "cloudbilling.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_billingbudget_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "billingbudgets.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_accesscontextmanager_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "accesscontextmanager.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_iam_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "iam.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_iamserviceaccountcredentials_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "iamcredentials.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_resourcemanager_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "cloudresourcemanager.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_buildartifacts_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "buildartifacts.googleapis.com"
  disable_on_destroy  = false
}

resource "google_project_service" "enable_sourcerepo_api" {
  depends_on          = [google_project.project]
  project             = google_project.project.project_id
  service             = "sourcerepo.googleapis.com"
  disable_on_destroy  = false
}