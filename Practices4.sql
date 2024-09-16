Use db;
CREATE TABLE customers (
    customer_id INT  PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(255)
);

CREATE TABLE orders (
    order_id INT  PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_id, first_name, last_name, email, phone, address) VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Maple Street'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '098-765-4321', '456 Oak Avenue'),
(3, 'Robert', 'Johnson', 'robert.johnson@example.com', '555-555-5555', '789 Pine Road'),
(4, 'Rob', 'John', 'robert.jonson@example.com', '555-555-5555', '79 Syd Road'),
(5, 'Rt', 'Son', 'rert.johnson@exmple.com', '8-555-5555', '789 Pine Road');



INSERT INTO orders (order_id,customer_id, order_date, amount, status) VALUES
(1,1, '2024-07-20', 150.00, 'Shipped'),
(2,2, '2024-07-21', 200.00, 'Pending'),
(3,3, '2024-07-22', 350.00, 'Delivered'),
(4,1, '2024-07-23', 250.00, 'Cancelled'),
(5,1, '2024-07-23', 250.00, 'Cancelled');
use classicmodels;

select * from offices;
update offices set city = 'SF' where officecode = 1;

use db;
select * from person;

insert into person values(104,'Surekha','Labor_colony','Sambhaji_nagar','surekha@gmail.com',54789),
(105,'Pradnya','Bhistabaug','Ahmednagar','Pradnya@gmail.com',545654);

select * from person;
delete from person 
where Id in (102,105);

select * from person;

use classicmodels;
select * from employees;
select firstname,officecode from employees order by firstname asc,officecode desc;

select firstname from employees where firstname like '%m';

select firstname from employees where firstname like '%A%'; # %A% means 'a' letter comes is any position in name

-- Aggregate function count min,max,average ,sum,distinct
select country,count(customernumber) as total_customers
from customers where country = 'usa';  

select min(amount) as minimum_amount from payments ;
select max(amount) as maximun_amount from payments;

select min(creditlimit) as miminum_creditlimit from customers;
select max(creditlimit) as maximum_creditlimit from customers;

use db;
select * from employee;

-- Q1 count of employee whose experience is more than 2 years
select count(Salary) as total_salary from employee where (PrevExperience)>2; 

select avg(salary) as average_salary from employee;

select sum(salary) as sum_of_salary from employee
where PrevExperience > 2;

-- Group by
-- group by clause in SQL is used to group rows that have the same values into summary rows.
-- it is often used in conjunction with aggregate function
-- (like count(),sum(),avg(),etc.) to perform calculation on each group seperately.
-- count(*) is generally faster than count(column_name) because it does'nt need to check for null
-- order by can be done by column index(not suggested)

select * from employee;
select prevExperience,count(EmpName) from employee
group by PrevExperience
order by PrevExperience;

select prevExperience,avg(salary) as avg from employee 
group by PrevExperience
order by PrevExperience;

use classicmodels;
select status ,count(customernumber) from orders
group by status;

select jobtitle,count(*) as emp_total
from employees
group by jobtitle;

-- get the avg salary of those employee whose exp is greater than 3 yrs
use db;

select prevExperience,avg(salary) from employee
where PrevExperience > 3 
group by PrevExperience
order by PrevExperience;

# Q3.count the number of order and calculate the total sales amount for each customer who
-- placed order within a specified range
 use classicmodels;
 select * from payments;
 select customernumber,count(*) as total_amount,sum(amount)from payments
 where paymentdate  between '2003-06-05' and '2004-12-18'
 group by customernumber
 order by customernumber;
 
 # Q4. order with values greater than 5000 -- use order detail table
 select * from orderdetails;
 select sum(quantityordered * PriceEach) as amount 
 from orderdetails
 where (quantityordered * PriceEach) > 5000; 
 
 -- Having and where difference
 use db;
 
 select prevExperience,avg(salary)
 from employee
 group by PrevExperience
 having avg(Salary) > 20000;
 
 select prevExperience ,avg(salary)
 from employee
 where avg(Salary) > 20000
 group by PrevExperience;
 
 use classicmodels;
 
 select OrderNumber,sum(quantityordered * priceEach) as total
 from orderdetails
 group by ordernumber
 having total > 5000;
 
 select * from orderdetails;
 
 select productcode,sum(quantityordered * priceEach) as order_value 
 from orderdetails
 where productcode like 'S18%'
 group by productcode
 having order_value > 5000
 order by order_value desc;
 
 -- Q1 	list the number of customers in each country 
 -- only include the countries with more than 5 customers
 
 select * from customers;
 
 select country,count(customername) as total_customers
 from customers
 group by country
 having count(customername) > 5
 order by total_customers;
 
 -- where and having difference
 -- where : used to filter the records from table based on condition
 -- having : filter the record from groups
 -- where : rosewise implementation but having does countwise operations
 -- where can be used without group by ,having cannot be used
 -- where cannot work with aggregate function,whereas having can have aggregate functions.
 -- where work with select,update,delete statements whereas having work with only select statements
 
 select now(); 
 select date(now());
 select curdate();
 
 select date_format(curdate(),'%D/%m/%Y');
 
 