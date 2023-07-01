# BASH

## Basic commands
```BASH
echo, cat, touch,
whoami, pwd, ls -la
mkdir, rmdir, rm, rm -rf
sudo, su, sudo -i
sudo apt update && sudo apt upgrade -y
```

## SSH
create ssh keypair:<br>
`ssh-keygen`

```BASH
cat .ssh/id_rsa
cat .ssh/id_rsa.pub
mkdir projects & cd projects/
cd ~/.ssh
cp id_rsa.pub authorized_keys
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
htop
kill
pkill -p name
systemctl start

history
reboot
shutdown -h now
```

## VS Code
new terminal: Ctrl + æ
