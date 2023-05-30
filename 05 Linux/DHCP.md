# Linux 搭建DHCP服务器

## dhcp服务端 67端口

### 下载dhcp

```shell
rpm -q dhcp			//检查是否下载

yum install dhcp			//下载dhcp服务
```

### 配置dhcp服务

配置文件

```
vim /etc/dhcp/dhcpd.conf


subnet 192.168.33.0 netmask 255.255.255.0 {
	range 192.168.33.100 192.168.33.200;
	option routers 192.168.33.1;
  option broadcast-address 192.168.33.255;
}

```

