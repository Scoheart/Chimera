rpm -q dhcp

yum install dhcp

cd /etc/dhcp/

vim dhcpd.conf

subnet 10.2.2.0 netmask 255.255.255.0 {
    range 10.2.2.2 10.2.2.255;
    option routers 10.2.2.1;
}

subnet 172.16.0.1 netmask 255.255.255.0 {
    range 172.16.0.2 172.16.0.255;
    option routers 172.16.0.1;
}

service dhcpd start
