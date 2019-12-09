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
  Trigger - Plan & Validate
 *****************************************/

resource "google_cloudbuild_trigger" "cloud_build_push_trigger_validator" {
  depends_on = [google_project.project]
  project = google_project.project.project_id
  trigger_template {
    project_id  = google_project.project.project_id
    branch_name = "master"
    repo_name   = google_sourcerepo_repository.environment_repository.name
  }
  filename = "cloud-build-validator.yaml"
}

/******************************************
  Trigger - Tag & Apply
 *****************************************/

//resource "google_cloudbuild_trigger" "cloud_build_push_trigger_apply" {
//  project = google_project.project.project_id
//  trigger_template {
//    project_id  = google_project.project.project_id
//    branch_name = "master"
//    repo_name   = google_sourcerepo_repository.environment_repository.name
//  }
//  filename = "cloud-build-apply.yaml"
//}
//
