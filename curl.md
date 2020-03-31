# curl cheatsheet

## Options

| Option | Description | Example |
|-|-|-|
|`X`| Request Type | `-X POST` |
|`H`| Header | `-H "Content-Type: application/json"` |
|`d`| data | `application/json` - `-d '{"message": "a request body example"}'` |
|`d`| data |  `x-www-form-urlencoded` - `-d 'name=bob'` |
|`i`| Include response headers/status code in output | `-i` |
|`-s`| Silent  or  quiet mode | `-s` |
|`-m, --max-time <seconds>`|Maximum time in seconds that you allow the whole operation to take| `-m 60`|
||||
||||

# Examples

POST Request
```
curl -i -H "Authorization: invalid" -H 'content-Type: application/json' -X POST 'http://localhost:3002/v1/question/' -d '{"question": "what is 1 + 1"}'
```
