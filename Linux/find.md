# find

search for any text file in home dir<br>
`find /home/gus -name *.txt`

omit cache files<br>
`find /home/gus -name *.txt | grep -v .cache`

only include files (from current dir)<br>
`find . -name Documents -type f`

only include dirs (from current dir)<br>
`find . -name Documents -type d`

delete files (from current dir)<br>
`find . -name Documents -type f -exec rm {} +`

remove execution permission on files in `Pictures` dir<br>
`find Pictures/ -type f -exec chmod 600 {} +`

set permissions on `Pictures` dir<br>
`find Pictures/ -type d -exec chmod 700 {} +`

example, clear logs<br>
`ls -l /var/log`

test / dryrun<br>
`sudo find /var/log -type f -name *.log`

if results look ok, execute<br>
`sudo find /var/log -type f -name *.log -exec truncate -s 0 {} +`

find any mp3 file in home dir and save to file<br>
`find . -name *.mp3 > music.txt`
