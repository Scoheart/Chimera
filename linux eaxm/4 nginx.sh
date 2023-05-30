yum install nginx -y

cd /etc/nginx

vim nginx.conf

server {
    listen 8088;
    server_name localhost;
    location / {
        root /home/scoheart/;
        index index.html;
    }
}

vim /home/scoheart/index.html

service nginx start

cd /etc/selinux
vim config

SELINUX=disabled
