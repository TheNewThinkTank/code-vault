
cat, touch, pwd, mkdir, rmdir, rm, rm -rf
sudo, su

sudo -i

sudo apt update && sudo apt upgrade -y

# Create ssh keypair
ssh-keygen
cat .ssh/id_rsa
cat .ssh/id_rsa.pub
mkdir projects & cd projects/
cd ~/.ssh
cp id_rsa.pub authorized_keys

Echo $TERM
visudo

sudos

Ctrl + d : logout user

Ctrl + æ: new terminal in VScode

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

Networking:
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
