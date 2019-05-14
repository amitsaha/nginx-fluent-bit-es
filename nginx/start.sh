set -eu
docker build -t amitsaha/nginx .


cat << EOF > /etc/systemd/system/demo-nginx.service
[Unit]
Description=Demo nginx service
Requires=network-online.target
Requires=docker.service
After=docker.service

[Service]
Type=simple
LimitNOFILE=infinity
ExecStart=/bin/docker run --rm amitsaha/nginx
SuccessExitStatus=143
KillMode=mixed
RestartSec=10
Restart=always
TimeoutSec=60

EOF

systemctl start demo-nginx

