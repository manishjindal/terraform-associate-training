## Initialise with backend bucket.
```
terrafrom workspace list
```

## Move backend bucket name to backend file

```
terraform init -reconfigure -backend-config backend/dev.tfvars
```

```
terraform workspace list
``` 

```
terraform plan -out .plan -var-file environments/dev.tfvars
```



## Using terraform workspace

```
terraform workspace list
```

```
terraform workspace new dev
terraform workspace list
```

Instead of using deault.tfstate now the state file name would be dev.tfstate

Managing multiple environment 
 - multiple backend
 - workspace.