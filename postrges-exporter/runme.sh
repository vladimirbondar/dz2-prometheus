#!/bin/sh
sudo cp node_exporter.service /etc/systemd/system/node_exporter.service
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
