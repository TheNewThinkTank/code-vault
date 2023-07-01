# Git - Book
https://git-scm.com/book/en/v2

## Fixing detached HEAD, when on feature branch
```BASH
git pull --rebase origin main
git log
git push --force
```

## Configuration
```BASH
git config --global user.email "user@gmail.com"
git config --global user.name "user"
```

## Remove all git history from repo
```BASH
#!/usr/local/bin/bash

# prerequisites:
# all tags deleted
# main branch is the only branch that exists

: '
git checkout --orphan last
git add -A
git commit -am "feat: rewrite git history" --no-verify
git branch -D main
git branch -m main
git push -f origin main
git gc --aggressive --prune=all
'
```
