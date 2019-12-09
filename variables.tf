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
  Input Variables
 *****************************************/

variable "project_id" {
  description = "ID of IaC CICD project"
  type        = string
  default     = ""
}

variable "org_id" {
  description = "The org ID of where the project will reside."
  type        = string
  default     = ""
}

variable "billing_account_id" {
  description = "Billing Account ID where costs of the project will be charged."
  type        = string
  default     = ""
}

variable "project_admin_group_id" {
  description = "Group who will have admin permissions for project"
  type        = string
  default     = ""
}

variable "terraform_backend_state_gcs_bucket_name" {
  description = "Name of GCS bucket to hold backend state file of Terraform"
  type        = string
  default     = ""
}


variable "source_repo_name" {
  type = string
  default = ""
}
