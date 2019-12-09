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
  Project IAM
 *****************************************/

resource "google_project_iam_member" "owner_group_permissions" {
  depends_on  = [google_project.project]
  project     = google_project.project.project_id
  member      = "group:${var.project_admin_group_id}"
  role        = "roles/owner"
}

/******************************************
  Project IAM
 *****************************************/

resource "google_billing_account_iam_member" "build_service_account_billing_admin" {
  depends_on          = [google_project.project, google_project_service.enable_billing_api, google_project_service.enable_billingbudget_api, google_project_service.enable_cloudbuild_api,]
  billing_account_id  = var.billing_account_id
  member              = "serviceAccount:${google_project.project.number}@cloudbuild.gserviceaccount.com"
  role                = "roles/billing.admin"
}