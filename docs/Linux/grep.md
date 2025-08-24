# grep

main purpose: search for text within files.

`grep`: global regular expression print

number of lines in file:<br>
`cat /etc/ssh/sshd_config | wc -l`

seach for word in file:<br>
`cat /etc/ssh/sshd_config | grep Port`

seach for lines without specific word in file:<br>
`cat /etc/ssh/sshd_config | grep -v Port`

more directly:<br>
`grep Port /etc/ssh/sshd_config`

generally, `grep what where` or `grep word file`

exclusion:<br>
`grep -v Port /etc/ssh/sshd_config`

add line numbers:<br>
`grep -n Port /etc/ssh/sshd_config`

count, or number, of occurences:<br>
`grep -c Port /etc/ssh/sshd_config`

grep is case-sensitive:<br>
`grep port /etc/ssh/sshd_config`

remove case-sensitivity:<br>
`grep -i port /etc/ssh/sshd_config`

seach for word in all files in current dir:<br>
`grep word *`<br>
`grep -n word *`

recursive search (narrow `path` as much as possible):<br>
`grep -r word path`<br>
example with logs:<br>
`grep -ri Error /var/log`
