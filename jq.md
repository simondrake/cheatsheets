# JQ

#### Filter array `items` array objects on `name` and return custom fields

```
echo file.json | jq '.items | .[] | select(.name == "thisName") | {name: .name, status: .status}'
```

#### Filter array array objects, where `name` contains `someText` and return custom fields

```
echo file.json | jq '.[] | select( .name | contains("someText") ) | {name: .name, status: .status}'
```
