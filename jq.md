# JQ

#### Filter array `items` array objects on `name` and return custom fields

```
echo file.json | jq '.items | .[] | select(.name == "thisName") | {name: .name, status: .status}'
```

#### Filter array objects, where `name` contains `someText` and return custom fields

```
echo file.json | jq '.[] | select( .name | contains("someText") ) | {name: .name, status: .status}'
```

#### Filter array objects, where an array has a certain key and return the name

```
echo file.json | jq -r '.items | .[] | select(.a.path.to.an.array[]?.key != null) | .name'
```
