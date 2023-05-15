
- count
- for_each
- output
    - for
    - splat
    - zipmap

- local
- toset
- list
- map
- zipmap
- lookup
- element

-------------------------------
## console

```
terraform console
```

```
> toset(["manish", "kumar", "jindal", "manish"])
toset([
  "jindal",
  "kumar",
  "manish",
])
```

```
tolist(["manish", "kumar", "jindal", "manish"])
tolist([
  "manish",
  "kumar",
  "jindal",
  "manish",
])
```