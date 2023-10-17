#!/bin/sh
sudo useradd -M -r -s /bin/false node_exporter
sudo cp node_exporter.service /etc/systemd/system/node_exporter.service
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
