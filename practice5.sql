use classicmodels;

select paymentdate,customernumber from payments
where year(paymentdate) = 2004
order by customernumber;

select count(customernumber) as total,
extract(year from paymentdate) as yearlyorders
from payments
group by yearlyorders
order by yearlyorders desc;

-- union ,union all,intersect
use db;

select * from customers;

select * from orders;

select customer_id from customers
union
select order_id from orders;

select * from customers
union all			# error : no of column are different
select * from orders;

select customer_id from customers
union all 
select order_id from orders; 

select customer_id from customers
intersect
select order_id from orders; 

select customer_id from customers
where customers.customer_id in (select customer_id from orders);

-- Q1 Display the first and last names of all actors from table actor.
use sakila;
select * from actor;
select first_name,last_name 
from actor;

-- Q2 display the first name of each actor in a single column in upper case letter 
select upper(concat(first_name,' ' ,last_name)) as 'Actor_Name'
from actor;

-- Q3 you need to find the ID number ,first name and last name of an actor ,
-- of whom you know only the first name 'joe'.what is one query you would use obtain this information
select actor_id,first_name,last_name 
from actor 
where first_name = 'joe';

-- Q4 find all the actors whose last name contain letters GEN.
select first_name ,last_name from actor
where last_name like '%GEN%';

-- Q5 find all actors whose last names contains the letter 'LI'. 
-- This time ,order the rows by last name and first name ,in that order:

select first_name. last_name from actor
where last_name like '%LI%'
order by first_name,last_name ;

-- Q6 display the country_id and country column of following countries:
-- Afghanisthan,bangladesh and china:
select country_id,country
from country
where country in('Afghanisthan','bangladesh','china');

-- Q7 Add a 'middle name' column to table actor.position in between first_name and last_name
-- specify datatype
alter table actor
add column Middle_Name varchar(20) after first_name;

-- Q8 you realize that some of these actors have tremendously long last name change the 
-- datatype 'blobs'
select * from actor;
 alter table actor
 modify column middle_name blob;
 
 -- Q9 now delete the middle name column  
 alter table actor
 drop column middle_name;
 
 -- Q10 list the last_name of actors as well as how many actors have the last name 
 
 select last_name,count(*) as 'count'
 from actor
 group by last_name;
 -- Q11 oh,no! the actor HARPO WILLIAMS was acidentially entered in the actor table GROUCHO WILLIAMS
 -- the name of 'harpo's second cousin's husband yoga teacher.
 
 update actor
 set first_name ='HARPO'
 where (first_name = 'GROUCHO' and last_name = 'WILLIAMS');
 
 select * from actor;
 
-- JOINS: Allows to combine data from 2 or more tables,helps in understanding the relationship bet 2 table
-- fact table(real time data,static in nature) and dimension table (transaction tables)
-- INNER JOIN ,LEFT JOIN,RIGHT JOIN ,FULL OUTER JOIN,SELF JOIN
-- Aliases for tables: useful when selecting common column from both table,readable,easy
-- iNNER JOIN : default join ,matching values from both the tables

select column_name(s) -- syntax
from table1
inner join table2
on table1.column_name= table2.column_name;

use classicmodels;

select * from orders;
select * from orderdetails;

-- get me the status of respecctive products from order/orderdetails
select o.ordernumber ,o.status,od.productcode
 from orders o
inner join orderdetails od
on o.ordernumber = od.ordernumber;

use sakila;

select fa.film_id,ft.title
from film_actor fa
inner join film_text ft
on fa.film_id = ft.film_id
order by film_id;

-- display first_name and last name as well as address of each staff member.
-- use table'staff'and'address'
select * from staff;

select * from address;

select s.staff_id,s.first_name,s.last_name,a.address_id
from staff s
inner join address a
on s.address_id = a.address_id;

-- Q use join to display the total amount rung by each staff member in august of 2005.
-- use table staff and payments
select * from staff;

select * from payment;

select s.first_name,s.last_name,sum(p.amount)
from staff s
inner join payment p
on(s.staff_id = p.staff_id)
where month(p.payment_date) = 08 and year(p.payment_date) = 2005
group by s.staff_id;

-- Q list each film and the number of actors who are listed for that film.
-- use tables film_actor and film .use inner join
select f.title,count(a.actor_id) as'no of actor'
from film f
inner join film_actor a
on f.film_id = a.film_id
group by f.title
order by 'no of actor'desc;

select co.country,c.city
from country co left join city c 
on c.country_id = co.country_id;

select * from country;

select * from city;




















