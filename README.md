```sh
export TF_CLOUD_ORGANIZATION=<org-name>
export TF_IN_AUTOMATION=true

# Update credentials
terraform login

# Install dependencies
terraform init

# Create workspace
terraform workspace new <workspace-name>

# Apply changes
TF_WORKSPACE=<workspace-name> terraform apply -var=stage=${TF_WORKSPACE}
```

# References:

- https://blog.gruntwork.io/how-to-manage-multiple-environments-with-terraform-using-workspaces-98680d89a03e
- https://discuss.hashicorp.com/t/cloud-block-with-dynamic-workspace-name/34641/2