# Logs

text file with a lot of info about the system:<br>
`cat /var/log/syslog`

`cd /var/log`

message log:<br>
`dmesg`

first 10 lines:<br>
`head /var/log/syslog`

last 10 lines:<br>
`tail /var/log/syslog`

last 50 lines:<br>
`tail -n 50 /var/log/syslog`

follow (last 10 lines, and follow the file for changes):<br>
`tail -f /var/log/syslog`<br>
example:<br>
`sudo systemctl restart ssh`

`journalctl`, part of `systemd`.<br>
example:<br>
`journalctl -u ssh`<br>
where `u`: unit

example:<br>
`journalctl -u apache2`

Alternatively,<br>
`cat /var/log/syslog | grep apache2`

example, follow unit:<br>
`journalctl -fu apache2`

obtionally,<br>
`sudo systemctl restart apache2`
