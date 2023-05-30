yum install bind -y

vim /etc/named.conf

options {
    listen-on port 53 {any;};
    allow-query {any;};
}

zone "scoheart.com" {
    type master;
    file "scoheart.con.zone";
    allow-update {zone;};
};

zone "1.1.10.in-addr.arpa" {
    type master;
    file "scoheart.com.arpa";
    allow-update {zone;};
};

cd /var/named
vim scoheart.com.zone

$TTL 3000
@ IN SOA @ rnamed.invalid. {
    0
    1H
    1H
    1H
    1H
}
    NS dns
dns A 10.1.1.100
@   A 10.1.1.110
www A 10.1.1.110


vim scoheart.com.arpa
$TTL 3000
@ IN SOA @ rnamed.invalid. {
    0
    1H
    1H
    1H
    1H
}
    NS dns.
100 PTR dns.scoheart.com.
110 PTR scoheart.com.
110 PTR www.scoheart.com.