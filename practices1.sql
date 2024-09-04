------ CREATE CLAUSE
create database db1;  create database dbname;
use db1;  ---- use db_name;

show databases;   --- show database in your system
create database db;
drop database db1;
show databases;

----- MySQl is very fast ,reliable,scalable and easy to use

/* Types of DBMS:
Realtional and non-relational
Relational and Non-Relational
Relational :Data stored in tables : mysql ,oracle ,microsoft sql server ,postgre sql
Non - Relational : data stored in different format 
SQL is a structure Query Language and is non case-sensitive
It is used to performed CURD operations : Create ,Update ,Read,Delete

Table : Rows and columns

DDL(Data Defination Language): create ,drop,truncate,alter,rename(artcd)
DML(Data Manipulation Language):insert ,update,delete(idu)
DCL(Data Control Language):grant and revoke permission
TCL(Transaction control language)
DQl(Data Query Language) : select

List of DDL Commands:
Create : this command is used to create database 
Drop : this command is used to delete the object from database
Alter : This command is used to alter the structure of database
Truncate: This is remove all record  from table including all cases allocated for 
Rename : This command is used to rename the object

List of DQL :
Select : Select is used for retrived the data from database

List of DML:
Insert : This command is used to insert record into table
Update : This command is useed to update existing record within table
Delete: this command is used to delete the record from database table*/

create database db1; # CREATE DATABASE dbname;
use db1;

create database if not exists db1;  # create database only if not exists
show databases;
drop database db1; # DROP DATABASE databsasename;

drop database if exists db1;

-- create table tablename(colname,coldatatype,constraint,...)
use db;
create table tb1( id int  ,emp_name varchar(30) ,age int not null);
show tables;
use db;
insert into tb1(id,emp_name,age) values(111,'Dhanashri','25'),(112,'Sakshi',20),(113,'Disha',22);

select * from tb1;
show tables;
create table person(ID int,Name varchar(30), Address varchar(20),City varchar(20),Email varchar(30),phone_no int not null);
insert into person values (101,'Dhanashri','Bhistabaug','Ahmednagar','dhanashri@gmail.com',123455),
(102,'Disha','FC road','Pune','Disha@gmail.com',254635),(103,'Sakshi','Deccan','Pune','Sakshi@gmail.com',568749);

select * from person;
select Name,Email,Phone_no from person;

create database EMP;
use EMP;
create table EMP_info(id int,Name varchar(30),Salary varchar(20));
insert into EMP_info values (1,'Dhanashri',50000),(2,'Sakshi',25000),(3,'Pradnya',35000),(3,'Akshata',20000),(4,'Sayali',100000);
select * from EMP_info;


create table personal_info(Cust_id int not null,Name varchar(30) not null,Country varchar(30) not null,city varchar(30) not null,
primary key (Cust_id));

create table ORDER_INFO( ORDER_ID int not null,ORDER_NUM int not null,Cust_id int, Foreign key (Cust_id) references Personal_info(Cust_id));

select * from personal_info; 
select * from Order_info;

use db;
create table tb6(RollNo int primary key ,Name varchar(20),age int default 25);
insert into tb6(Rollno,name) values (1,'a'),
(2,'b'),
(3,'c'),(4,'d');

select * from tb6;

-- check constraint
create table stu(id int primary key,city varchar(20),age int,constraint cs check(age>18 and city = 'Pune'));
insert into stu values (101,'Pune','20');
insert into stu values (102,'Pune',21);

# when we use or at least one condition is statisfied that's why recorded added in table
create table stu1(id int primary key,city varchar(20),age int ,constraint cs1 check(age>18 or city = 'Ahmednagar'));
insert into stu1 values(101,'Ahmednagar',20);
insert into stu1 values(102,'Pune',21);  

-- Additional Task
# create DB EMP ,id,name,salary,select and view all the data 
use emp;
create table Employee(id int primary key,Name varchar(20),salary int not null);
drop table employee;

create table tb3(RollNo int primary key,name varchar(20),age int not null);

create table tb4(RollNo int primary key,Name varchar(20),Age int unique);
insert into tb4 values(1,'Dhanashri',22);
insert into tb4 values(2,'Sakshi',22);
insert into tb4 values(3,'Disha',20);
insert into tb4 values(4,'Akshata',20);
select * from tb4;

insert into tb4 values (5,'Pradnya',18),(6,'Chitra',18); # it does'nt make sense because people have same age


use classicmodels;

select * from movie_metadata;

-- Alter the table 
-- Atter table : It is used to add and delete modify in existing table

-- Alter table table_name change old_column_name New_column_name datatype; (Syntax)
Alter table employees change employeeNumber EMP_NO int;
select * from employees;
