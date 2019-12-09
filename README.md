**Bootstrap your Lab Environment**

Pre-Reqs:
- Org Node: Project Creator Permission
- Billing Account: Billing Account Admin
- Terraform Installed in Cloud Shell

Steps:
- Open Cloud Shell
- Make a directory you'll use to copy repo into: mkdir terraform-bootstrap
- Connect to directory: cd terraform-bootstrap
- Copy this repository to current directory: git clone https://github.com/john-hurringjr/tf-boot.git .
- Edit the inputs.auto.tfvars file with your preferred editor: e.g. - vim inputs.auto.tfvars
- Enter all necessary values in inputs file. Save changes.
- Run: terraform init
- Run: terraform plan
- Review terraform plan for any errors and make necessary changes to resolve
- Run: terraform apply
- Review the plan from apply to ensure it matches expectations and enter "yes"
- Connect to your home directory: cd
- Create another folder: mkdir environment-base-code
- Connect to new folder: cd environment-base-code
- Copy starter environment repository to current directory: git clone https://github.com/john-hurringjr/test-environment.git . 
- Edit the inputs.auto.tfvars file with your preferred editor: e.g. - vim inputs.auto.tfvars
- Enter all necessary values in inputs file. Save changes.
- Edit the backend.tf file with your preferred editor: e.g. - vim backend.tf
- Update the bucket field with the same name used when editing the bootstrap environment variables
- Push the starter environment repo to your cloud source repository