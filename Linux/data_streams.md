# Data Streams

## standard input, standard output, standard error
`stdin` e.g. keyboard commands<br>
`stdout` screen printout<br>
`stderr` when an error is displayed on screen (failed commands, e.g. command not found)

Distinguishing between `stdout` and `stderr`: `echo $?`<br>
returncode 1: `stderr`<br>
returncode 0: `stdout`

example: following command will fail as it is not called with sudo:
`find /etc -type f`.
`echo $?` returns 1

`stdin` is represented by the number 0, `stdout` by 1 and `stderr` by 2.
example: split `stdout` from `stderr` and handle them differently:
`find /etc -type f 2> /dev/null`
`/dev/null` is a black hole; anything that is sent to `/dev/null` is never seen again.

example: sent `stdout` to a file (it is implied):
`find /etc -type f > ~/results.txt`
displays only `stderr`, but newly created file has all `stdout`.

example: send `stdout` and `stderr` to two different files (overwrite):
`find /etc -type f > ~/results.txt 2> ~/errors.txt`

example: append `stdout` and `stderr` to two different files:
`find /etc -type f >> ~/results.txt 2>> ~/errors.txt`
