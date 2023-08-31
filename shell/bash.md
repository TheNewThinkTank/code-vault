# BASH

## BASH dir compression

create an archive file called foo.tar.gz in current directory<br>
`tar -zcvf foo.tar.gz /home/jerry/tom`

to restore/extract all files from archive in current directory<br>
`tar -zxvf foo.tar.gz`

## Basic commands
clear screen: `Ctrl + l`<br>
change to home dir: `cd ~`<br>
change to previous dir: `cd -`<br>
change directory and swap back again:
`pushd /some_dir`, then `popd`<br>
minimize program to the background (e.g. if working on file that's not ready to be saved): `Ctrl + z`<br>
then send it back to the foreground again:`fg`<br>
monitor system resources: `htop`<br>

```BASH
echo, cat, touch,
whoami, pwd, ls -la
mkdir, rmdir, rm, rm -rf
sudo, su, sudo -i
sudo apt update && sudo apt upgrade -y
```

```BASH
echo $TERM
visudo
```

sudos

logout user: Ctrl + d

```BASH
man
whatis
which
whereis

wget
curl

zip
unzip

head
tail
less

cmp
diff

tree -> tree.txt

sort

Pipe |

find
grep
sed
awk

chmod
chown
```

## Networking
```BASH
ifconfig
ip address | grep eth0
ping -c 5 -s 500 url
traceroute url

netstat -tulpn
ss -tulpn

sudo ufw allow 80
sudo ufw status

uname -a

sudo apt install neofetch
````

```BASH
cal

echo “4+5” | bc

free

df -H

ps -aux
top
kill
pkill -p name
systemctl start

history
reboot
shutdown -h now
```

## VS Code
new terminal: Ctrl + æ
