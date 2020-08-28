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

#### Add a field to an object

```
echo '{"hello": "world"}' | jq --arg foo bar '. + {foo: $foo}' 

{
  "hello": "world",
  "foo": "bar"
}
```

```
// Preserve nested objects with * and concat strings
echo '{"hello": {"value": "world"}}' | jq --arg foo bar '. * {"hello": {foo: ("not" + $foo)}}'

{
  "hello": {
    "value": "world",
    "foo": "notbar"
  }
}

// Using + will not preserve nested objects
echo '{"hello": {"value": "world"}}' | jq --arg foo bar '. + {"hello": {foo: ("not" + $foo)}}'                                                                                           

{
  "hello": {
    "foo": "notbar"
  }
}

```
