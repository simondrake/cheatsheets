# Common

## Heredoc

The string after << indicates where to stop
```
cat << EndOfMessage
This is line 1.
This is line 2.
Line 3.
EndOfMessage
```

To send these lines to a file, use:
```
cat > $FILE <<- EOM
Line 1.
Line 2.
EOM
```


# SCP/SSH

### SCP to Server
SCP all files in `/path/to/files/` to `10.10.10.10` to `serverDIR`

`scp -r /path/to/files/* 10.10.10.10:./[serverDIR]`

### SCP From Server
SCP all files from `serverDIR` on `10.10.10.10` to the current local directory

`scp 10.10.10.10:./[serverDIR]/* .`

### SSH Tunnels
Create a SSH tunnel that uses port `9925` on the localhost. When traffic is received on `localhost:9925` it will route it to `10.10.10.10:25`

`ssh -L 9925:localhost:25 10.10.10.10`

Create a SSH tunnel that uses port `8282` and `9282` on the localhost. When traffic is received on `localhost:8282` it will route it to `10.10.10.10:8280` and when traffic is received on `localhost:9282` it will route it to `10.10.10.10:9280`

`ssh -L 8282:localhost:8280 -L 9282:localhost:9280 10.10.10.10`

Create SSH tunnel that when a connection is made to the port `5044` on `10.10.10.10` it should be forwarded to port `5044` on your local machine.

`ssh -R 5044:localhost:5044 10.10.10.10`

#Symbolic-Links

### Symbolic-Links
Create a symbolic link called `myApplication` that is linked to `myApplication_1.0.3`

`ln -s myApplication_1.0.3 myApplication`

# Exploratory Commands

### Find processes running on specific port

`sudo lsof -i tcp:port`

### Find biggest 30 files

`sudo find -type f -exec du -Sh {} + | sort -rh | head -n 30`

### Find open file handles, by pid and name

`lsof | awk '{ print $2 " " $1; }' | sort -rn | uniq -c | sort -rn | head -20`

# Running Commands

### Run command every interval

##### Every 1 second

`while sleep 1; do [cmd]; done` 

`while sleep 1; do echo "Hello"; done`

`while true; do clear; ./runScript.sh; sleep 1; done`

##### Every millisecond

`while sleep 0.1; do [cmd]; done` 

`while sleep 0.1; do echo "Hello"; done`


# AWK

## Print the 5th column
`df -h / | tail -1 | awk '{print $5}'`

## Print the 5th column with quotation marks

`df -h / | tail -1 | awk '{printf("\"%s\"\n", $5);}'`

## Print all columns after, and including, the 5th column

`df -h / | tail -1 | awk '{ s = ""; for (i = 5; i <= NF; i++) s = s $i " "; print s }'`

# NC

`nc -z -v {host} {port}`

# Kill commands

## Kill multiple processes

`for pid in $(ps -ef | grep "process name" | awk '{print $2}'); do kill -9 $pid; done`

`pkill -9 {process name}`

# Remove from Systemd

```
systemctl stop [servicename]
systemctl disable [servicename]
rm /etc/systemd/system/[servicename]
rm /etc/systemd/system/[servicename] symlinks that might be related
systemctl daemon-reload
systemctl reset-failed
```

# iptables

Redirect port `80` to `9999`
```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 80 -j REDIRECT --to-ports 9999
```

Redirect port `443` to `9991`
```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 443 -j REDIRECT --to-ports 9991
```
