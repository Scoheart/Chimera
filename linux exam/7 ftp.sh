yum install vsftpd -y

vim /etc/vsftpd/vsftpd.conf

listen=YES
listen_ipv6=NO

service start vsftpd
