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
