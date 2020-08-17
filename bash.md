## Run multiple commands, using the index value

```
for i in {1..10}; do [command] "$i" --flag; done
```

## Run multiple commands, looping over an array of strings

```
for s in a b c d e; do echo "$s"; done
```

## Delete vault entries in a list

```
p=path/to/vault/entry; for i in $(vault kv list "$p" | sed 1,2d); do vault kv delete "$p/$i"; done
```
