#!/bin/sh
sudo useradd -M -r -s /bin/false patroni_exporter
sudo cp patroni_exporter /usr/local/bin/
sudo cp patroni_exporter.service /etc/systemd/system/patroni_exporter.service
sudo systemctl start patroni_exporter
sudo systemctl enable patroni_exporter
