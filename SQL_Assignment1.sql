create database ecommerce;
use ecommerce;
/* creating a table named product to store the basic details of all the products available with pid as a primary key which is unique for every product available*/
create table product(pid int primary key,name varchar(20),description varchar(70),price int , category varchar(10));
desc product;
/*creating a table region to store all the region id's and name of the region*/
create table region(rid int primary key,name varchar(20));
desc region;
create table timePeriod(tid int primary key, name varchar(20));
desc timePeriod;
create table customer(cid int primary key,name varchar(30),address varchar(50),age int,loyal_status varchar(50));
desc customer;
create table purchase(prid int primary key, cid int,tid int,foreign key (cid) references customer(cid),foreign key (tid) references timePeriod(tid));
desc purchase;
create table purchase_product(prid int ,pid int, foreign key (prid) references purchase(prid),foreign key (pid) references product (pid));
desc purchase_product;
create table product_region(pid int ,rid int, foreign key (pid) references product(pid),foreign key (rid) references region (rid));
desc product_region;
create table inventory(inventoryid int primary key, pid int, stock_level int, foreign key (pid) references product(pid));
desc inventory;