#!/bin/sh
sudo useradd -M -r -s /bin/false blackbox_exporter
sudo cp blackbox_exporter /usr/local/bin/
sudo mkdir /opt/blackbox_exporter/
sudo cp blackbox.yml /opt/blackbox_exporter/blackbox.yml
sudo cp blackbox_exporter.service /etc/systemd/system/blackbox_exporter.service
sudo systemctl start blackbox_exporter
sudo systemctl enable blackbox_exporter
