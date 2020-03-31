# Git

#### Checkout single file from another branch

```
git checkout branch_name -- file.go
```

#### Squash commits

```
git rebase -i HEAD~[NUMBER OF COMMITS]
```

#### Remove file that was previous tracked and is now in `.gitignore`

Single file:
```
git rm --cached <file>
```

Whole folder:
```
git rm -r --cached <folder>
```

#### `git diff` a single file between commits

```
git diff 6c485e874de3:file.go origin/master:file.go
```

#### Diff ranges

![it diff range help](./static/images/git-diff-help.png)

In other words, `git diff foo..bar` is exactly the same as `git diff foo bar`; both will show you the difference between the tips of the two branches `foo` and `bar`. On the other hand, `git diff foo...bar` will show you the difference between the "merge base" of the two branches and the tip of `bar`. The "merge base" is usually the last commit in common between those two branches, so this command will show you the changes that your work on `bar` has introduced, while ignoring everything that has been done on `foo` in the mean time.
