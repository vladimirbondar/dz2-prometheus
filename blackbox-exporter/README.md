# install node_exporter binary
install prometheus-node-exporter
ansible_os_family == "Debian"

install golang-github-prometheus-node-exporter
ansible_os_family == "RedHat"
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

# create servise
sudo useradd -M -r -s /bin/false node_exporter
cat << EOF | sudo tee /etc/systemd/system/node_exporter.service
[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target
[Service]
User=node_exporter
ExecStart=/usr/bin/node_exporter
[Install]
WantedBy=default.target
EOF

#start & enable serice
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
