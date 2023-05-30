yum install vsftpd -y

vim /etc/vsftpd/vsftpd.conf

listen=YES
listen_ipv6=NO

service start vsftpd

ftp 10.1.1.134

put local-file remote_file
get remote-file local_file