create database Demographics;

use demographics;

-- Q1. Write a SQL query to find those employees whose salary is higher than 9000. Return
-- first name, last name and department number and salary.
SELECT 
    first_name, last_name, department_ID, salary
FROM
    employee_hr_data
WHERE
    salary > 9000;
	
-- Q2.Write a SQL query to identify employees who do not have a department number. Return
-- employee_id, first_name, last_name, email, phone_number, hire_date, job_id,
-- salary,commission_pct, manager_id and department_id.
SELECT 
    *
FROM
    employee_hr_data
WHERE
    department_id NOT IN (SELECT 
            department_id
        FROM
            department_hr_data);

-- Q3.Write a SQL query to find those employees whose first name does not contain the letter
-- ‘T’. Sort the result-set in ascending order by department ID. Return full name (first and
 -- last name together), hire_date, salary and department_id.

SELECT 
    CONCAT(first_name, '', last_name) AS full_name,
    hire_date,
    salary,
    department_id
FROM
    employee_hr_data
WHERE
    first_name NOT LIKE '%T%'
ORDER BY department_id ASC;

-- Q4.ANS 
SELECT 
    *
FROM
    employee_hr_data
WHERE
    salary BETWEEN 9000 AND 12000
        AND commission_pct > 0; 
-- Q5. ANS

select concat(first_name,'',last_name) as full_name,salary
from employee_hr_data
where commission_pct = 0;

-- Q6.ANS
SELECT 
    CONCAT(first_name, '', last_name) AS full_name,
    salary,
    manager_id
FROM
    employee_hr_data
WHERE
    employee_id != 'manager'; 

-- Q7. ANS
SELECT 
    *
FROM
    employee_hr_data
WHERE
    first_name LIKE '%F%'
        OR first_name LIKE '%T%'
        OR first_name LIKE '%M%'
ORDER BY salary DESC;

-- Q8.ANS
select concat(first_name,'',last_name) as full_name,hire_date,commission_pct,
concat(email,'-',phone_number) ,salary
from employee_hr_data
where salary>12000
or phone_number like '______3%'
order by first_name desc;

-- Q9.ANS
select first_name,last_name,department_id
from employee_hr_data
where first_name like '__s%'; 

-- Q10.Ans
select employee_id,count(job_id)
from job_history_hr_data
group by employee_id
having count(job_id) > 1;

-- Q11.ANS
select job_id ,count(employee_id),sum(salary),(max(salary) - min(salary)) as difference
from employee_hr_data
group by job_id; 

-- Q12.ANS
select job_id , end_date,start_date
from job_history_hr_data
where end_date - start_date > 300
group by job_id
having count(*) > 1;

-- Q13.ANS
select manager_id,count(employee_id)
from employee_hr_data
group by manager_id; 

-- Q14. ANS
select department_id,avg(salary)
from employee_hr_data
where commission_pct is not null
group by department_id
order by department_id; 

-- Q15. ANS
select department_id
from employee_hr_data
where commission_pct is not null
group by department_id
having count(employee_id) >10; 

-- Q16.ANS
select job_title,max_salary,min_salary
from jobs_hr_data
where max_salary >=10000 and max_salary <=15000; 

-- Q17. Write a SQL query to find details of those jobs where the minimum salary exceeds 9000.
-- Return all the fields of jobs
select * from jobs_hr_data
where min_salary >9000;

--  Q18. Write a SQL query to find those employees who work in the same department as ‘Clara’.
-- Exclude all those records where first name is ‘Clara’. Return first name, last name and
-- hire date.

use demographics;

-- Joins Query --  

-- Q1. Write a SQL query to find the first name ,last name,department,city and state province 
-- for each employee.

select e.first_name,e.last_name,e.department_id,d.department_name,l.city,l.state_province
from employee_hr_data as e
join department_hr_data d on
e.department_id = d.department_id
join location_hr_data as l  on
d.location_id = L.location_id;

-- Q2. Write SQL Query to find first name , last name ,salary and job grade for all employees
select e.first_name ,e.last_name ,e.salary ,j.grade_level
from employee_hr_data as e
join job_grades_hr_data as j on
e.salary between j.lowest_sal  and j.highest_sal;

-- Q3.Write SQL query to find all those employees who work in department id 80 or 40.
-- return first name , last name , department number and department name.
select e.first_name,e.last_name,e.department_id,d.department_name
from employee_hr_data e
join department_hr_data d on 
e.department_id = d.department_id
where d.department_id in(80,40)
order by d.department_id;




-- Q4.Write a SQL query to find those employees whose first name contain the letter 'Z'.
-- Return first name ,last name ,department,city and state province
select e.first_name,e.last_name,d.department_name ,l.city,l.state_province
from employee_hr_data e
join department_hr_data d on
e.department_id = d.department_id
join location_hr_data l on
d.location_id = l.location_id
where e.first_name like '%Z%';

-- Q5.Write a SQL query to find all employees who joined on 1st january 1993 and left on or
-- before 31 August 1997. Return job title,department name , employee name and
-- joining date of the job. 
select concat(first_name,'',last_name) as emp_name,e.department_id,d.department_name,
e.hire_date,j.start_date,j.end_date,e.job_id
from employee_hr_data as e
inner join job_history_hr_data as j on e.employee_id = j.employee_id
inner join department_hr_data as d on e.DEPARTMENT_ID = d.department_id
where j.start_date >= '01-01-1993' and
j.end_date <= '31-08-1997';

-- Q6 write SQL query to calculate the difference between the maximun salary of the job
-- and employee's salary.Return job title ,employee name and salary difference.
select concat(first_name,'',last_name) as emp_name,
j.job_title,(j.max_salary - e.salary) as difference
from employee_hr_data as e
join jobs_hr_data j on
e.job_id = j.job_id;

-- Q7 Write a SQL query to find the department name and the full name (first and last name) 
-- of the manager.
 select concat(first_name,'',last_name) as full_name,d.department_name,d.MANAGER_ID
 from employee_hr_data e
 join department_hr_data d on
 e.EMPLOYEE_ID = d.MANAGER_ID;
 
-- Q8.Write a SQL query to find the department name ,full name (first and last name) of 
-- the manager and their city.
select concat(first_name,'',last_name) as full_name,d.department_name,L.city
from employee_hr_data e
join department_hr_data d on
e.DEPARTMENT_ID = d.DEPARTMENT_ID
join location_hr_data L on
d.location_id = L.LOCATION_ID;

-- Q9.Write SQL query to find out the full name(first name and last name) of employee with
-- an ID and the name of the country where he/she is currently employed.
select concat(first_name,'',last_name) as full_name,e.employee_id,L.country_id,
c.country_name
from employee_hr_data e
join department_hr_data d on
e.DEPARTMENT_ID = d.DEPARTMENT_ID
join location_hr_data L on
d.location_id = l.location_id 
join countries_hr_data c on
l.country_id = c.country_id;

-- DIFFERENCE BETWEEN JOIN AND SUBQUERY 
-- DIFFERENCE BETWEEN JOIN AND UNION

-- IMPORTANCE FOR MOCKS
/* JOINS 
SUBQUERY
GROUP BY
CASE
QUESTION OF EACH FUNCTION WHEN TO USE AND NOT USE AND THEIR DIFFERENCE
HAVING AND WHERE

TRIGGER,PROCEDURE,WINDOWS,PARTITION  FUNCTION  -- ADDITION READING
 
 
 STEPS TO SOLVE SQL QUERY
 1. IDENTITIFY COLUMNS 
 2. IDENTITIFY TABLES
 3. FUNCTIONS #WHERE #AND #OR #ORDER BY #LIMIT AND #LIKE  (HOW TO DECIDE FUNCTION )
 4. AGGREGATE FUNCTION (IF GIVEN USE GROUP BY)
 5. UNDERSTANDING LOGIC 