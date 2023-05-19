* count
  - length
* for_each
  - list
  - set

# Using Count
If elements are identical then use count but if the elements are not identical then use for_each

```
instances = ["node01", "node02", "node03"]
```
```
terraform plan -out .plan
terraform apply .plan
```

Now add one more instance in the begining, this would cause all the instances to delete and recreate.
```
instances = ["node00", "node01", "node02", "node03"]
```
```
terraform plan -out .plan
Plan: 4 to add, 0 to change, 3 to destroy.
```

Since the instances are unidentical and created with index 
`google_compute_instance.default[0]`, 
`google_compute_instance.default[1]`, 
`google_compute_instance.default[2]`,

Adding once instance in the begining would cause recreation of all the instance.

# Use for_each

for_each can be used with set or map, not with list (list contains duplicate items)

```
resource "google_compute_instance" "default" {
  for_each = toset(var.instances)
  name         = each.key
}
```
now the instances will be created with the name not with the index.
`google_compute_instance.default["node00"]` 
`google_compute_instance.default["node01"]`
`google_compute_instance.default["node02"]`


* set vs list

set or list is used to store multiple values.

list allows `duplicate` item while set doesn't contain duplicate item

# for_each output

```
value = values(google_compute_instance.default).*.id
```
