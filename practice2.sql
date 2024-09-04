use db;

describe person;  # syntax: describe tablename;

use classicmodels;

-- Add column in table
alter table payments
add emp_name varchar(30);

select * from payments;

-- DML : insert ,update and delete 
-- update : update the existing record in a table (use where clause)
-- update tablename set col1 = val1 ,col2 = val2 where condition ;
-- delete : delete the existing records in table( use where clause)

# where syntax : all operators can be used along with the where clause 
-- the where clause supports the following types of predicates:
-- comparison : = equal ,<> not equal ,< less than ,<= less than or equal 
-- pattern matching %like(used for wildcard filtering ) 

-- select column1,column2,..
-- from table_name
-- where condition ;
select * from employees where firstname = 'mary';
select city,customername from customers where city = 'Las vegas';

-- alter table  -- add column after clause
alter table payments add salary int after amount;

select * from payments;

alter table payments add column indexn int first;
describe payments;

create table personal_info (cust_id int not null ,name varchar(20) not null,country varchar(30) not null,
city varchar(20)not null);

alter table personal_info add primary key(cust_id);
select * from personal_info;
describe personal_info;

alter table personal_info drop primary key;
describe personal_info;

alter table payments drop emp_name;
describe payments;

-- change datatype
-- modify command : modify is command used to change datatype or attribute of an existing column
-- without changing its name 
 describe payments;

alter table payments modify column salary float;
describe payments;

-- rename table 
-- syntax (rename table currenttablename to newtablename;
use classicmodels;

rename table productlines to PL;

describe customers;
select * from customers;
select distinct city from customers;

select count(distinct city) from customers;

select firstname,length(firstname) from employees;

-- concate -- combine firstname and lastname 
select firstname,lastname,concat(firstname,' ' ,lastname) as full_name from employees;
select count(lastname) as total_emp from employees;
-- DML : insert ,update ,delete

-- Q1 list of all customers whose creditlimit> 10k
select * from customers;
select Customername from customers where creditlimit > 10000;

-- Q2 list all the customers from france and usa
select * from customers;
select Customername,country from customers where country in('France' ,'USA');

-- Q3 list of all customers who belong to 'berlin' and 'stuttgart'
select * from customers where country = 'Germany' and (city = 'berlin' or city = 'stuttgart'); 

-- Q4 how many customers have creditLimit between 20k to 30k
select count(customername) from customers where creditlimit between 20000 and 30000 ;

-- Q5 All those employee whose firstname between 'A' and 'D' 
select * from employees;
select firstname from employees where firstname between 'A' and 'D';

-- Q6 All those customers who are not from 'France' and 'USA'
select * from customers;
select Customername,country from customers where country not in ('USA','France');

-- the update statement is used to modify the existing records in table .
-- update table_name 
-- Set column1 = value1,column2 = value2,...
-- where condition ;
 show tables;
 select * from offices;
 
 SHOW COLUMNS FROM offices LIKE 'officecode';
SHOW CREATE TABLE offices;
SHOW INDEX FROM offices;
 SET SQL_SAFE_UPDATES = 0;
UPDATE offices SET city = 'SF' WHERE officecode = 1;

-- Q1 show the first name of customers in table
use classicmodels;
update customers set Customername = 'AG' where customernumber = 103;
select * from customers;

use classicmodels;
 update customers set postalcode = '00001'
 where country = 'USA';
 
 select * from customers;
 
 use db;
 
 select * from person;
 delete from person 
 where id in (102,103);
 
 select * from person; 
 insert into person values (102,'Sakshi','FC','Pune','sakshi2gmail.com',12345);
 insert into person values(103,'Disha','Model_colony','Pune','Disha@gmail.com',58796);
 
 select* from person;
 delete from person where id in(101);
 select * from person;
 
 # Limit clause
 -- mysql limit clause
 -- Limit clause is used to specify the number of record to return
 -- offset specifies the number of rows to skip before starting to return rows
 -- count specifies the maximun number of rows to return 
 -- select column1,column2 from table name Limit offset ,count;
 use classicmodels;
 select * from employees;
 select emp_no,firstName,lastname from employees limit 3;  # Limit 
 
 select emp_no,firstName,lastName from employees limit 1,2; # offset
 select emp_no,firstname,lastname from employees limit 2 offset 4;
 
 -- MYSQL order by keyword
 -- order by keyword is used to sort the result-set in ascending and descending order
 -- syntax select col1,col2 from tablename orderby col1  asc;
 select emp_no,firstname from employees order by emp_no asc;
 select * from payments;
 select customerNumber ,amount from payments order by amount desc limit 5;
 
 select amount,customerNumber from payments order by amount ,customernumber limit 5;
 
 -- wildcards:
 -- Mysql wildcards allow us to perform fuzzy matching searches in a database  -- like and not like
 -- % represent zero or more characters
 -- represent a single characters
 -- [] represent a any single character within brackets *
 -- ^ represent any characters not in the brackets *
  -- - represent any single characters within specified range*
  # {} represent any escaped character
  
  select city from customers where city like'%N';
  select movie_title from movie_metadata where movie_title like'%lord%';
  
  select movie_title from movie_metadata where movie_title like '%_ord%';
  

 
 