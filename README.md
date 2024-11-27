# Dummy-Systemd-Service

## Project Overview

The goal of this project is to get familiar with systemd.
- Creating and enabling a service
- Checking the status
- Keeping an eye on the logs
- Starting and stopping the service
- And more...

# Objectives

- Create a script called `dummy.sh` - this runs on forever and writes a message to the log file every 10 seconds, simulating an application running in the background.

- Create a systemd `dummy.service` that starts the app automatically on boot up, and keep running in the background. If it fails, it should restart automatically.

- You should be able to `start`, `stop`, `enable`, `disable`, check the `status` of the service, and check the logs i.e. following commands should be available for the service:

```bash
# Interacting with the service
sudo systemctl start dummy
sudo systemctl stop dummy
sudo systemctl enable dummy
sudo systemctl disable dummy
sudo systemctl status dummy

# Check the logs
sudo journalctl -u dummy -f
```

## Project Requirements
- Linux command line interface (CLI)
- Basic knowledge of shell scripting


## Steps
1. Create `dummy.sh` script that loops on forever, imitating an running application.
2. Create a file named `your-service.service` and include following:
```bash
[Unit]
Description=<description about this service> # Visible in system logs

[Service]
User=<user e.g. root>
WorkingDirectory=<directory_of_script e.g. /root>
ExecStart=<script which needs to be executed>
# optional items below
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
```
3. Reload the service files to include the new service.
```bash
sudo systemctl daemon-reload
```

4. Start your service
```bash
sudo systemctl start dummy.service
```

5. To check the status of your service
```bash
sudo systemctl status dummy.service
```

6. To enable your service on every reboot
```bash
sudo systemctl enable dummy.service
```

7. To disable your service on every reboot
```bash
sudo systemctl disable dummy.service
```

## How to use it
1. Download or copy the `dummy.sh` script and run it on your linux system.
> Note: Put this script in /root/scripts/dummy.sh directory.
2. Download or copy the `dummy.service` that starts on system boot and restarts if failed.


---
[Link to Roadmap.sh](https://roadmap.sh/projects/dummy-systemd-service)