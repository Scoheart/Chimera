cd /etc/yum.repo.d/

vim new.repo
[alibaba]
name=alibaba
baseurl=https://
gpgcheck=0
enabled=1

vim nginx.repo
[nginx]
name=nginx repo
baseurl=http://nginx.orh/packages/centos/6/$basearch/
gpgcheck=0
enabled=1