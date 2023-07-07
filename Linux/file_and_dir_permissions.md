# File and Directory Permissions

`ls -l` shows the permissions string to the left.<br>
broken down into 4 groups, e.g. `drwxr-xr-x` or `-rw-rw-r--`.<br>
First group is a single character;<br>
`d`: directory<br>
`-`: file<br>
`l`: link<br>

next groups are 3 characters each. In order, they are:<br>
permissions for the user, the group and the other / world / everybody else<br>
`r`: read<br>
`w`: write<br>
`x`: execute<br>

## Modify permissions

Suppose file `testfile.txt` contains the command `ls -l`,

make file executable for everybody:<br>
`chmod +x testfile.txt`

remove execution permission for user:<br>
`chmod u-x testfile.txt`

remove execution permission for group:<br>
`chmod g-x testfile.txt`

remove execution permission for other:<br>
`chmod o-x testfile.txt`

make file executable for user:<br>
`chmod u+x testfile.txt`

remove read permission for group:<br>
`chmod g-r testfile.txt`

remove read permission for other:<br>
`chmod o-r testfile.txt`

remove write permission for group:<br>
`chmod g-w testfile.txt`

example:
`chmod u-w testfile.txt`<br>
will make the following command fail:<br>
`echo "https://github.com/TheNewThinkTank/code-vault" >> testfile.txt`<br>
`chmod u+w testfile.txt`<br>
`echo "https://github.com/TheNewThinkTank/code-vault" >> testfile.txt`<br>
now the content was appended to the file.

## Combining chmod commands

Allow group to read and write with a single command:<br>
`chmod g+rw testfile.txt`

## Bit scores - numerical representations of r, w and x

`r`: 4
`w`: 2 
`x`: 1

example<br>
`chmod 770 testfile.txt`<br>
results in permission string<br>
`-rwxrwx---`

generally, `chmod ??? testfile.txt`
with `???` equal to `ugo`, user, group and other.

example<br>
`ls -l Downloads/`

Recursively change permissions for all files in dir, without affecting the dir:
`chmod 600 Downloads/*`

Use with caution, applies to everything beneath the object:
`chmod -R 700 Downloads`

Or use `find` command for more granular controls

## Change ownership

Change ownership of all files in `Downloads/` dir to `new-user` and `new-user-group`<br>
`sudo chown -R new-user:new-user-group Downloads/`

Shorthand (leaving out group defaults to the user's group):<br>
`sudo chown -R new-user: Downloads/`
