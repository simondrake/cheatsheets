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
|`zf`|Fold|
|`q`|Record|


## Editing
|Command|Description|
| -- | -- |
|`i` `a`|Enter insert mode (insert at cursor/append after cursor)|
|`I` `A`|Enter insert mode (insert at beginning of line/append to end of line)|
|`o` `O`|Open new line (below the current line/above the current line)|
|`u` `ctrl+r`|Undo and redo|
|`.`|Repeat the previous command. `5.` repeats it five times|
|`q<letter>`, `q`, `@<letter>`|Start recording, Stop recording, Replay recording|


### Correcting
|Command|Description|
| -- | -- |
|`t<char>`|Exclusive match: continue up to (but not including) the next `<char>` on this line|
|`f<char>`|Inclusive match: continue up to (and including) the next `<char>` on this line|
|`T<char>`|Exclusive match: continue up to (but not including) the previous `<char>` on this line|
|`F<char>`|Inclusive match: continue up to (and including) the previous `<char>` on this line|
|`i<char>`|Exclusive inner match: apply to text bounded by `<char>`, where `<char>` is from a limited set of characters that come in pairs, like quotes, parentheses, brackets, etc.|
|`a<char>`|Inclusive inner match: same as above, except it includes `<char>` on both ends|
|`v$F<char>d`|Delete to the last `<char>` on this line. `v` - visual mode, `$` - to go the end of the line, `F<char>` - search backwards for `<char>`, `d` - delete|




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
|`_`|Go to the first non-blank character of the line|
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
|`b` `w`|Move back by token/forward by token/back by word/forward by word. A token is a sequence of letters, digits, and underscores|
|`B` `W`|Move back by word/forward by word. A word consists of anything that’s not whitespace|
|`#` `*`|Find the previous/next occurrence of the token under the cursor|
|`n` `N`|Repeat the last find command forward/backward|
|`ctrl+o` `ctrl+i`|Move backward/forward through the jump history|
|`ctrl-e` `ctrl-y`|Scroll downwards/upwards|

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
|`:g/log\.Info("DEBUGGING"/d`|Delete all lines that match a pattern|
|`<C-e>`|Close popup/autocomplete menu6|

### Surround

| Command | Description | Examples |
| --| -- | -- |
|`ys`|Add surrounding|`ysiw`(add surrounding in word)|
|`ds`|Delete surrounding|`dst` (delete tags)|
|`cs`|Change surrounding|`cs"'` (change from `"` to `'`)

## Plugins

### multiple-cursors
[link](https://github.com/terryma/vim-multiple-cursors)

|Command|Description|
|--|--|
|`shift+i`|Use when vim freezes|
|`<C-n>`|start multicursor and add a virtual cursor + selection on the match|
|`<C-x>`|skip the next match|
|`<C-p>`|remove current virtual cursor + selection and go back on previous match|
|`<A-n>`|start multicursor and directly select all matches|

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

