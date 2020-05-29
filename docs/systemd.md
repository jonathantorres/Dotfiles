# Systemd

### View all the services running
```bash
systemctl list-units --type service
```

### View the status of a particular service
```bash
systemctl status {service name}
```

### View the status of the ssh server
```bash
systemctl status ssh.service
```

Here's a list of the most used commands:
```bash
systemctl start [name.service]
systemctl stop [name.service]
systemctl restart [name.service]
systemctl reload [name.service]
systemctl status [name.service]
systemctl is-active [name.service]
systemctl list-units --type service --all
```
