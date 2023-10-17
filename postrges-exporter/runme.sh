#!/bin/sh
sudo useradd -M -r -s /bin/false postgres_exporter
sudo cp postgres_exporter /usr/local/bin/
sudo mkdir /opt/postgres_exporter/
sudo cp postgres_exporter.env /opt/postgres_exporter/postgres_exporter.env
sudo cp postgres_exporter.service /etc/systemd/system/postgres_exporter.service
sudo systemctl start postgres_exporter
sudo systemctl enable postgres_exporter
