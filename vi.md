# Vi

## Modes
|Command|Mode|
| -- | -- |
|`i`|Insert|
|`d`|Delete|
|`/pattern`|Search for `pattern`|
|`u`|Undo|
|`<C-r>`|Redo|
|`y`|Yank|
|`d'`|Delete to|
|`c`|Change|
|`m`|Mark|
|`w`|Word|
|`aw`|Around word|
|`J`|Join|


## Editing

### Insert

|Command|Description|
| -- | -- |
|`p`|Paste after current position|
|`P`|Paste before current position|
|`a`|Insert after cursor|
|`o`|Insert new line after the current one|
|`O`|Insert new line before the current one|

### Delete

|Command|Description|
| -- | -- |
|`x`|Delete character under character|
|`dd`|Delete current line|

### Edit

|Command|Description|
| -- | -- |
|`cw` or `C`|Replace from the cursor to the end of the word|

### Copy

|Command|Description|
| -- | -- |
|`yy`|Copy the current line|

### Search and Replace
|Command|Description|
| -- | -- |
|`:%s/foo/bar/g`|Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.|
|`:s/foo/bar/g`|Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.|
|`:%s/foo/bar/gc`|Change each 'foo' to 'bar', but ask for confirmation first.|
|`:%s/\<foo\>/bar/gc`|Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.|
|`:%s/foo/bar/gci`|Change each 'foo' (case insensitive due to the i flag) to 'bar'; ask for confirmation.|
|`:%s/foo/bar/gcI`|Change each 'foo' (case sensitive due to the I flag) to 'bar'; ask for confirmation.|

## Navigating

|Command|Description|
| -- | -- |
|`0`|Go to first column|
|`^`|Go to the first non-blank character of the line|
|`$`|Go to the end of the line|
|`g_`|Go to the last non-blank character of the line|
|`NG`|Go to line `N`|
|`gg`|Go to first line|
|`G`|Go to last line|
|`w`|Go to the start of the following word|
|`e`|Go to the end of this word|
|`%`|Go to the corresponding `(`, `{` or `[`|
|`*`|Go to the next occurence of the word under the cursor|
|`#`|Go to the previous occurence of the word under the cursor|
|`3fa`|Find the third occurence of `a` on this line|
|`zc`|Close fold|
|`oc`|Open fold|
|`[{`|Beginning of code block (that use curly brackets)|
|`]}`|End of code block (that use curly brackets)|

## Splits

|Command|Description|
| -- | -- |
|`:vsp`|Create a vertical split|
|`:sp`|Create a horizontal split|
|`:resize 60`, `:res +5`, `:res -5`|Change the height of the window|
|`:vertical resize 80`, `:vertical resize +5`, `:vertical resize -5`|Change the width of the window|

## Examples

|Command|Description|
| -- | -- |
|`2dd`|Delete two lines|
|`3p`|Paste the text three times|
|`100idesu [ESC]`|Will write `desu` one hundred times|
|`.`|Perform the same command again|
|`3.`|Perform the same command again, three times|
|`:sort u`|Sort|
|`:%!uniq`|Remove Duplicate Lines|
|`:%!jq .`|Prettify a JSON file|
|`"*y`| Yank to clipboard |
|`gd`|Go to definition|
|`V`|Visual Mode (line)|
|`v`|Visual Mode (character)|
|`CTRL` + `v`|Visual Mode (block)|
|`<n>df<x>`|Delete up to the nth character of x|
|`V100G`|Select the current line up to and including line 100|
|`<C-V>$A,<Esc>`|Add a comma to the end of the line (`$A` is append to line)|
|`:g/^$/d`|Delete empty lines. `:g` executes a command (`:d` - delete) on lines which match a regex (`^$` = blank line)|
|`:.,+20norm .`|Repeat the last command on the next 20 lines|
|`edit!`|Reload buffer|

### Surround

| Command | Description | Examples |
| --| -- | -- |
|`ys`|Add surrounding|`ysiw`(add surrounding in word)|
|`ds`|Delete surrounding|`dst` (delete tags)|
|`cs`|Change surrounding|`cs"'` (change from `"` to `'`)

## Plugins

|Name|Link|
|--|--|
|multiple-cursors|[link](https://github.com/terryma/vim-multiple-cursors)|

### Vim-Go

|Command|Description|
|--|--|
|`:GoReferrers`|Find usages|

### vim-gitgutter

|Command|Description|
|--|--|
|`]c`|Next Hunk|
|`[c`|Previous Hunk|

### nerdcommenter

|Command|Description|
|--|--|
|`[count]<leader>cc`|Comment|
|`[count]<leader>cu`|Uncomment|
|`[count]<leader>c<space>`|Toggle|



## NERD Tree

### Mappings

* `t`: Open the selected file in a new tab
* `i`: Open the selected file in a horizontal split window
* `s`: Open the selected file in a vertical split window
* `I`: Toggle hidden files
* `m`: Show the NERD Tree menu
* `R`: Refresh the tree, useful if files change outside of Vim
* `?`: Toggle NERD Tree's quick help

### Creating a new file or directory

First, bring up NERDTree and navigate to the directory where you want to create the new file. Press `m` to bring up the NERDTree Filesystem Menu. This menu allows you to create, rename, and delete files and directories. Type `a` to add a child node and then simply enter the filename. To create a directory follow the same steps but append a `/` to the filename.

