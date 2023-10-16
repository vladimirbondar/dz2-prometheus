Prometheus node:

    balancer 91.185.84.176


Links:

    http://balancer:9090/classic/graph

Installation:

    git clone https://github.com/vladimirbondar/dz2-prometheus.git
    cd dz2-prometheus/ansible
    ansible-playbook -i inventory prometheus-playbook.yml