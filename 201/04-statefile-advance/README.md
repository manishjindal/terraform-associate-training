# Use local backend

## Create an instance using terraform
```
terraform init
```

```
terraform plan -out .plan
```

```
terraform apply ".plan"
```

## Rename the terraform resource from "default" to "test"

```
terraform plan -out .plan
Plan: 1 to add, 0 to change, 1 to destroy.
```

Run the state move command
```
terraform state mv google_compute_instance.default google_compute_instance.test 
```

```
terraform plan -out .plan
No changes. Your infrastructure matches the configuration.
```


## Delete statefile from local and import the resource.


```
terraform  import google_compute_instance.test "projects/<project-id>/zones/us-central1-a/instances/test"
```

# Use remote backend
Uncomment remote backend 
```
terraform init -reconfigure
```
This will push backend to remote backend bucket.

## State pull
First remove all .terraform files and folder.
```
rm -rf .terraform terraform.tfstate .terraform.lock.hcl
```

```
terraform state pull > terraform.tfstate
```
This will pull the remote state to the local machine.




## State push
Now delete the remote state file from GCS bucket.
```
terraform plan -out .plan
Plan: 1 to add, 0 to change, 0 to destroy.
```
This will add one resource since the remote state file is no longer available.

```
terraform state push terraform.tfstate
```

This will push the statefile to remote.

Note: this will push the statefile with <workspace>.tfstate

If you create a new workspace `dev` and push the state file then it will be created with `dev.tfvars`

```
terraform workspace new dev
terraform state push terraform.tfstate
```

Now you should see `dev.tfvars` statefile in GCS bucket.


# Show

```
terraform show
terraform show .plan
terraform show terraform.tfstate
terraform state show google_compute_instance.test 