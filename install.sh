#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt install fail2ban -y

sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

sudo systemctl start fail2ban
sudo systemctl enable fail2ban

sudo systemctl status fail2ban
