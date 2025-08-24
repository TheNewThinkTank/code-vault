# cut

purpose: remove sections from lines within files

example file, `message.txt`:<br>
```TEXT
TheNewThinkTank has recently reached 1,030 contributions in the last year! Wow!
```

example, print the first character of a file:<br>
`cut -b 1 message.txt`

`-b`: select by byte<br>
`-c`: select by character<br>
`-d`: select by delimiter<br>
`-f`: select by field<br>

example, print the first character of a file:<br>
`cut -b 7,8,9,10,11 message.txt`<br>
better, if the characters are sequential:<br>
`cut -b 7-11 message.txt`

more consistently (to avoid if a character takes more than 1 byte),<br>
`cut -c 7-11 message.txt`

example: choose multiple character intervals:<br>
`cut -b 7-11,56,57-61 message.txt`

example, split a file by field:<br>
by default, tab `\t` is the delimeter.<br>
change the delimeter to space instead:<br>
`cut -d " " -f 1,2 message.txt`

example: extract usernames<br>
`cat /etc/passwd`

`cut -d ":" -f 1 /etc/passwd`

cut is best used on files with multiple rows and fields
