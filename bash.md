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

## Run command every interval

##### Every 1 second

`while sleep 1; do [cmd]; done` 

`while sleep 1; do echo "Hello"; done`

`while true; do clear; ./runScript.sh; sleep 1; done`

##### Every millisecond

`while sleep 0.1; do [cmd]; done` 

`while sleep 0.1; do echo "Hello"; done`

## AWK

## Print the 5th column
`df -h / | tail -1 | awk '{print $5}'`

## Print the 5th column with quotation marks

`df -h / | tail -1 | awk '{printf("\"%s\"\n", $5);}'`

## Print all columns after, and including, the 5th column

`df -h / | tail -1 | awk '{ s = ""; for (i = 5; i <= NF; i++) s = s $i " "; print s }'`

## Change the field seperator

```
// Print the 9th column, with a `/` field seperator
awk '{print $9}' | awk -F'/' '{print $8}'

// Print the 1st column, with a `=` field separator
env | grep -i co2 | awk -F= '{print $1}'
```

## Unset multiple env vars with a prefix

```
unset `env | grep -i prefix | awk -F= '{print $1}'`
```

## Sed

|Command|Description|
| -- | -- |
|`sed '/^$/d'`|Remove blank lines|
|`sed '/^  /d'`|Remove lines starting with two spaces|
|`sed 's/^textToRemove//g'`|Remove text|
