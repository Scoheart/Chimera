# 下载bind

yum install bind



# bind的配置文件

配置文件所在路径

```shell
/etc/named.conf
```



配置文件内容

```nginx
options {
	listen-on port 53 { any; };
	listen-on-v6 port 53 { ::1; }; 
	directory 	"/var/named";                 //区域文件保存路径
	allow-query     { any; }; 
 
}

// 根DNS服務器區域文件
zone "." IN {
    type hint;
    file "named.ca";
};

//輔助DNS服務器區域文件 從外面加載區域文件
include "/etc/named.rfc1912.zones";
include "/etc/named.root.key";
```



配置辅助区域文件

```
/etc/named.rfc1912.zones
```



辅助区域文件内容

```nginx
zone "localhost.localdomain" IN {
	type master;
	file "named.localhost";
	allow-update { none; };
};

zone "localhost" IN {
	type master;
	file "named.localhost";
	allow-update { none; };
};

zone "1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa" IN {
	type master;
	file "named.loopback";
	allow-update { none; };
};

zone "1.0.0.127.in-addr.arpa" IN {
	type master;
	file "named.loopback";
	allow-update { none; };
};

zone "0.in-addr.arpa" IN {
	type master;
	file "named.empty";
	allow-update { none; };
};

//新增加
zone "scoheart.com" IN {
    type master;
    file "scoheart.com.zone";
    allow-update {none;}
}

```



配置区域文件

```nginx
@	IN SOA	@ rname.invalid. (
					0	; serial
					1D	; refresh
					1H	; retry
					1W	; expire
					3H )	; minimum
	NS	@
	A	127.0.0.1
	AAAA	::1

```

