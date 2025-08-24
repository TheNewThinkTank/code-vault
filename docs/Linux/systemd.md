# systemd

Most popular Linux init system.
Controls units, e.g. services.
Mostly interacted with through `systemctl`.
Systemd is self-reliant and runs in the background.

## systemctl
```BASH
sudo systemctl status service-name
sudo systemctl start service-name
sudo systemctl restart service-name
sudo systemctl stop service-name
sudo systemctl enable service-name
sudo systemctl disable service-name
```

## Unit Directory Priority
1. /etc/systemd/system
2. /run/systemd/system
3. /lib/systemd/system
