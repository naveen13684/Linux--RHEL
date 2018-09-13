!#/usr/bin/sh

# download the mysql repo rpm
cd /naveen/rpms

wget https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpmhttps://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm

#install report

rpm -ivh mysql80-community-release-el7-1.noarch.rpm

#install the rpm packages in below order 1-common,2-libs,3-client,4-server

yum install mysql-community-common mysql-community-libs mysql-community-client mysql-community-server -y

#checkig status of mysql

systemctl status mysqld

#enable mysqld

systemctl enable mysqld

#start mysqld

systemctl start mysqld

#check status again

systemctl status mysqld

#Below is the temporary passowrd for root login

grep -i temporary /var/log/mysqld.log
