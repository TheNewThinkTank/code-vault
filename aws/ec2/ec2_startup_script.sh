
#!/usr/bin/bash

## AMI: AL2023
USERNAME="some_user"
REPO_URL="some_repo"
sudo -i
useradd "$USERNAME"
## Grant sudo privileges
echo "$USERNAME" ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/"$USERNAME"
## List users
# awk -F: '{ print $1}' /etc/passwd
## Create ssh keypair
ssh-keygen -t rsa -b 4096 # -C "$USERNAME"
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys && chmod 600 ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa.pub
## 600: (chmod a+rwx,u-x,g-rwx,o-rwx) sets permissions so that,
## (U)ser / owner can read, can write and can't execute.
## (G)roup can't read, can't write and can't execute.
## (O)thers can't read, can't write and can't execute.
mkdir projects && cd projects
sudo yum update -y
## Install git
sudo yum install git
## Install docker AL2023
sudo yum install -y docker
## Check Docker permissions
# ls -la /var/run/docker.*
# sudo chmod 666 /var/run/docker.sock
sudo service docker start
# sudo usermod -a -G docker ec2-user
## Install docker-compose
# sudo yum install docker-compose
# curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
## LOGGING
systemctl enable sshd
systemctl start sshd
## Check /var/log/dnf.log for package installation info
## Check binary file /var/log/wtmp for login info
cat /var/log/wtmp | last
## Check /var/log/btmp for failed login attempts, needs to be run as root
cat /var/log/btmp | lastb -adF
## a shows the hostname in the last column, d attempts to map DNS names to IP addresses, F displays the full times
# systemctl enable docker.service
# systemctl start docker.service
# sudo service docker start
# Clone repo
# git clone "$REPO_URL"
## Install Node Version manager
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
## Activate nvm
# . ~/.nvm/nvm.sh
## Install node
## nvm install node
## nvm uninstall 20.3.1
# nvm install 16
## Check versions
# node -v
# npm -v
## Install CDK (TypeScript)
# npm install aws-cdk-lib
npm install -g aws-cdk
## Upgrade npm
npm install -g npm@9.8.0
## Install TypeScript 3.8 or later
npm -g install typescript
## Check cdk version
cdk --version
