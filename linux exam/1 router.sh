cd /etc/sysconfig/network-scripts

cp ifcfg-ens33 ifcfg-ens33:0

vim ifcfg-ens33:0

TYPE="Ethernet"
PROXY_METHOD="none"
BROWSER_ONLY="no"
BOOTPROTO="static" #diff
DEFROUTE="yes"
IPV4_FAILURE_FATAL="no"
IPV6INIT="yes"
IPV6_AUTOCONF="yes"
IPV6_DEFROUTE="yes"
IPV6_FAILURE_FATAL="no"
IPV6_ADDR_GEN_MODE="stable-privacy"
NAME="ens33:0"  #diff
UUID="ea92684e-56ad-4316-b8c2-cee6c4ab2209"
DEVICE="ens33:0" #diff
ONBOOT="yes"
#diff
IPADDR=10.2.2.1
NETMASK=255.255.255.0

cp ifcfg-ens33 ifcfg-ens33:1

TYPE="Ethernet"
PROXY_METHOD="none"
BROWSER_ONLY="no"
BOOTPROTO="static" #diff
DEFROUTE="yes"
IPV4_FAILURE_FATAL="no"
IPV6INIT="yes"
IPV6_AUTOCONF="yes"
IPV6_DEFROUTE="yes"
IPV6_FAILURE_FATAL="no"
IPV6_ADDR_GEN_MODE="stable-privacy"
NAME="ens33:1" #diff
UUID="ea92684e-56ad-4316-b8c2-cee6c4ab2209"
DEVICE="ens33:1" #diff
ONBOOT="yes"
#diff
IPADDR=172.16.0.1
NETMASK=255.255.255.0

service network restart

echo 1 > /proc/sys/net/ipv4/ip_forward
