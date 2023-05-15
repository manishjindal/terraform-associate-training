
1. Exporting variable 
```
export TF_VAR_project_id=<project_id>
```

2. Using terraform.tfvars file


3. Using any tfvars files
```
terraform plan --var-file environments/dev.tfvars
```

4. Using commnad line flags
```
terraform plan -out .plan -var project_id=<project_id>
```
