# JQ

#### Filter array `items` array objects on `name` and return custom fields

```
echo file.json | jq '.items | .[] | select(.name == "thisName") | {name: .name, status: .status}'
```
