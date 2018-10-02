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


Change the password for the first time
mysql> alter user 'root'@'localhost' identified by 'password';

mysql>  alter user 'root'@'localhost' identified by 'Redhat@123';
Query OK, 0 rows affected (0.07 sec)
mysql> 


create database testdb;
create user 'testuser'@'localhost' identified by 'password';
grant all on testdb.* to 'testuser' identified by 'password';


mysql> create user 'master'@'localhost' identified by 'Redhat@123';
Query OK, 0 rows affected (0.08 sec)
mysql>




create database testdb;
grant all on testdb.* to 'testuser' identified by 'password';

use testdb;
create table customers (customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name TEXT, last_name TEXT);

Reset the MySQL Root Password:
sudo systemctl stop mysqld
sudo mysqld_safe --skip-grant-tables &
mysql -u root
use mysql;
update user SET PASSWORD=PASSWORD("password") WHERE USER='root';
flush privileges;
exit
sudo systemctl start mysqld
