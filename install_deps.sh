#!/bin/bash

sudo apt-get update
sudo apt-get install -y python3 xboxdrv supervisor build-essential libdbus-glib-1-dev

sudo python3.11 -m venv venv
source venv/bin/activate
sudo pip3 install -r requirements.txt

# Eventually try setting the following values in bluetooth service:
# sudo nano /lib/systemd/system/bluetooth.service
# ExecStart=/usr/libexec/bluetooth/bluetoothd -C -P sap,input,avrcp

# sudo nano /etc/bluetooth/main.conf
# Class = 0x002508