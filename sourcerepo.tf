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
  Source Repo Creation
 *****************************************/

resource "google_sourcerepo_repository" "environment_repository" {
  depends_on  = [google_project_service.enable_sourcerepo_api]
  project     = google_project.project.project_id
  name        = var.source_repo_name
}

/******************************************
  Copy from GitHub to New Source Repo
 *****************************************/
//
//resource "null_resource" "copy_environment_repo" {
//  depends_on = [google_sourcerepo_repository.environment_repository, google_project_iam_member.owner_group_permissions]
//  provisioner "local-exec" {
//    command   = ""
//  }
//}
