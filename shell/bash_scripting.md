# Bash Scripting

command interpreter / shell

return to previous dir<br>
`cd -`

move to `some-dir` and return at any moment
```BASH
pushd <some-dir>
popd
```

move to background, and bring up again<br>
```BASH
Ctrl + Z
fg
```

reverse search through history<br>
`Ctrl + R`

add timestamp to history. Ignore commands if started by whitespace<br>
```BASH
vim ~/.bashrc
HISTTIMEFORMAT="%Y-%m-%d %T "
HISTCONTROL=ignoreboth
```

run 2 commands in a row<br>
`ls -l; echo "i am the second command"`

only run second command if first succeeds<br>
`ls -l && echo "i am the second command"`

follow log-file in real-time<br>
`tail -f <some-log-file>`

delete content of file<br>
`truncate -s 0 <some-file>`

ensure output is columnized<br>
`mount | column -t`

find out which shell is used from a given terminal window<br>:
`echo $SHELL`

find the location of bash<br>:
`which bash`

create file
`vim some_file.sh`

add shebang to top of file
`#!/usr/env/bin bash`

make the file executable
`sudo chmod +x some_file.sh`

variables

if statements

while loops

math functions

exit codes

for loops

functions

case statements

scheduling jobs

arguments
