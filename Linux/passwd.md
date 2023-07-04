# passwd

## Set or change password
For logged in user: `passwd`
other users: `sudo passwd username`

## Get password statistics
`sudo passwd -S username`

## Lock password for user
`sudo passwd -l username`

## Unlock password for user
`sudo passwd -u username`

## Expire password after 30 days
`sudo passwd -x 30 username`

## Expire password immediately
`sudo passwd -e username`

## Delete password for user
`sudo passwd -d username`
