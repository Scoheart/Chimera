yum install tomcat -y

#/etc/tomcat/
cd /var/lib/tomcat/webapps

mkdir ROOT
vim index.html

service tomcat start
