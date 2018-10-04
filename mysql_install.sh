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


message from server: "Host '192.168.1.7' is not allowed to connect to this MySQL server"
mysql 8+ onwards :
========================================================================================
mysql> CREATE USER 'root'@'%' IDENTIFIED BY 'root';
mysql> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

OpenSSL unable to load Public Key
=====================================
useSSL = false

List TABLES
===========

show tables;

list COLUMN and VALUES inside TABLE
====================================

select * from customers;

INSERT row into table
======================
insert into customers(first_name,last_name,displayname,age) VALUES('Deepak','Gowda','Deepak Gowda',18);
insert into customers(first_name,last_name,displayname,age) VALUES('Vijay','kumar','Vijay Kumar',35);
insert into customers(first_name,last_name,displayname,age) VALUES('Sathesh','Raghunathan','Sathesh Raghunathan',35);
insert into customers(first_name,last_name,displayname,age) VALUES('Anil','Dora','Anil Dora',35);

how to change the data TYPE
============================

alter table customers MODIFY  phone long;

update customers SET phone = '9945911787', year_join = '2018' where customer_id =7

select * from customers

delete a ROW
=============

DELETE from customers where customer_id=7

Add new COLUMN
==============

alter table customers add COLUMN year_join int after age

alter table customers add COLUMN phone int after age

insert into customers(phone,year_join) VALUES(9945911766,2010) where customer_id=1

CREATE TABLE IF NOT EXISTS vendors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);
