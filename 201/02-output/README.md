1. simple output
```
terraform apply --auto-approve
```


2. sensitive output
```
terraform output    
id = <sensitive>
```

```
terraform output --json
{
  "id": {
    "sensitive": true,
    "type": "string",
    "value": "projects/<project_id>/zones/us-central1-a/instances/test"
  }
}
```

3. use output in another resource.

4. Use of depends_on 

5. Destroy the resources
```
terraform apply --destroy --auto-approve
terraform destroy --auto-approve
```