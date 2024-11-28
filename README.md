# Dummy-Systemd-Service

## Project Overview

The goal of this project is to get familiar with systemd.
`Systemd` is a system and service manager for Linux. It handles starting, stopping, and managing services, processes, and system tasks. It uses unit files to define and control these services, making system management easier and more efficient.

This lab aims to enhance familiarity with `systemd` by: 
- Creating and enabling a service
- Checking the status
- Keeping an eye on the logs
- Starting and stopping the service
- And more...

# Objectives

- Create a script called `dummy.sh` - this runs on forever and writes a message to the log file every 10 seconds, simulating an application running in the background. While also adding a counter every time the script restarts after a failure.

- Create a systemd `dummy.service` that starts the app automatically on boot up, and keep running in the background. If it fails, it should restart automatically.

- You should be able to `start`, `stop`, `enable`, `disable`, check the `status` of the service, and check the logs i.e. following commands should be available for the service:

```bash
# Interacting with the service via commands

sudo systemctl daemon-reload    # Reload the service files to include the new service.

sudo systemctl start dummy      # Start your service
sudo systemctl stop dummy       # Stop your service
sudo systemctl enable dummy     # Enable your service on every reboot
sudo systemctl disable dummy    # Disable your service on every reboot
sudo systemctl status dummy     # Check status of the service

sudo journalctl -u dummy -f     # Check the logs
```

## Project Requirements
- Linux command line interface (CLI)
- Basic knowledge of shell scripting


## How to use it
1. Download or copy the `dummy.sh` script and run it on your linux system.
2. Put this script in `/root/scripts/dummy.sh directory.`
>Note: To access root you can use `sudo -i` command.

3. Add executable permission on the file with 
`chmod +x /root/scripts/dummy.sh
`

4. Download or copy the `dummy.service` and place it in `/etc/systemd/system/`
5. Reload systemd-configuration with `sudo systemctl daemon-reload`. Then play round with the different systemctl commands `start`, `stop`, `status`, `enable`, `disable` etc...

![model](Path to screenshot of dummy service.)



---
[Link to Roadmap.sh](https://github.com/madebydawid/Dummy-Systemd-Service/blob/main/image/sudo-systemctl-status-dummy.jpg?raw=true)