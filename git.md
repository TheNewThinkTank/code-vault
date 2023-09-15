# Git

[Book](https://git-scm.com/book/en/v2)

upcoming:
- cherry-picking
- force-with-lease
- squash

## Basics

initialize empty git repo
`git init <repo-name>`

configuration
```BASH
git config --global user.email "user@gmail.com"
git config --global user.name "user"
```

repository status<br>
`git status`

add file to staging area<br>
`git add <filename>`

commit changes to repo<br>
`git commit -m '<commit-message>'`

push changes to remote server<br>
`git push`

get latest changes from remote<br>
`git pull`

ignore files and dirs by adding their relative paths to the following file<br>
`.gitignore`

## Branching

create new branch<br>
`git checkout -B '<new-branch-name>'`

delete branch<br>
`git branch -D '<branch-to-delete>'`

## Inspect recent changes

e.g. for the `src` dir,<br>
`git whatchanged --since="last Sunday" -p -- src`

## Fixing detached HEAD, when on feature branch
```BASH
git pull --rebase origin main
git log
git push --force
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
git push -f origin main -v
cd .git
git reflog expire --expire=now --all && git gc --prune=now --aggressive
# check size:
du -hs .
du -hs .git
'
```
