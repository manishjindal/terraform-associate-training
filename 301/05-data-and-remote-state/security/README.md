```
terraform init -backend-config backend/dev.tfvars
```

```
terraform plan -out .plan -var-file environments/dev.tfvars
```

```
terraform apply ".plan"
```

```
terraform destroy -var-file environments/dev.tfvars
```