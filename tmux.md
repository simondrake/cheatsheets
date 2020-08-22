# Tmux

## Sessions
|Command|Description|
| -- | -- |
|`tmux`|Start new|
|`tmux new -s myname`|Start new with session name|
|`tmux a -t myname`|Attach to named|
|`tmux ls`|List sessions|
|`tmux kill-session -t myname`|Kill session|

## Windows (tabs)
|Command|Description|
| -- | -- |
|`{prefix} c`|new window|
|`{prefix} ,`|name window|
|`{prefix} w`|list windows|
|`{prefix} f`|find window|
|`{prefix} &`|kill window|
|`{prefix} .`|move window - prompted for a new number|

## Panes (splits)
|Command|Description|
| -- | -- |
|`{prefix} %`|horizontal split|
|`{prefix} "`|vertical split|
|`{prefix} o`|swap panes|
|`{prefix} q`|show pane numbers|
|`{prefix} x`|kill pane|
|`{prefix} + {space}`|space - toggle between layouts|

