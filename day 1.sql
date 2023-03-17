 -- SQL is case-insensitive
 
 
 /*
We will follow;
UPPERCASE: Keywords
LOWERCASE: one-keyword
*/

USE store;

use store;

SHOW TABLES;


USE store;
SELECT*
FROM customers
ORDER BY first_name desc;
use exercise_hr;
select*
from employees
order by first_name;

-- solution for 2nd qn
SELECT employee_id, first_name, last_name, salary
FROM employees 
ORDER BY salary ASC;

SELECT 1,2;

SELECT 1+2;
SELECT 100-50/2 AS 'value';
/*

SELECT
FROM <table_name>;
*/

USE store;
SELECT first_name
FROM customers;

SELECT first_name,last_name,points, points + 10
FROM customers;


SELECT first_name,last_name,points, points + 10
FROM customers;

SELECT first_name,last_name,points, points + 10 AS 'new points'
FROM customers;


SELECT first_name,last_name,points, points + 10 AS new_points
FROM customers;

-- ORDER BY <column_name> DESC
SELECT 171*214+625;
 
USE exercise_hr;
show tables;
SELECT first_name as 'first Name' , last_name AS 'Last Name'
From employees;

SELECT first_name, last_name,salary, salary* 15/100 as PF
From employees;

USE store;
SELECT distinct state
FROM customers;

use store;
select name,unit_price, 1.1* unit_price as 'new price'
from products;




select *
from customers;
select *
from customers
WHERE state = 'fl';
select *
from customers
WHERE POINTS> 3000;
select*

from customers
WHERE birth_date >='1990-01-01';

select*
from customers

WHERE phone =312-480-8498;

SELECT*
from customers
WHERE points> 3000 And birth_date>='1990-01-01';

SELECT*
from customers
WHERE points> 3000 OR birth_date>='1990-01-01';

SELECT*
from customers
WHERE POINTS<4000 And STATE='FL';

SELECT*
from customers
WHERE POINTS>1000 And birth_date>'1899' or STATE='va';


-- customers living in FL or VA or GA */
use store;
select *
from customers
where state = "FL" OR  state = "VA" OR state = "GA";
use store;
select *
from PRODUCTS
where quantity_in_stock in (49,38,72);
/*
order of logical operators
-not
-and
-or
*/
select * from customers;
select *
from customers
where address like '%trail%'  OR  address like '%avenue%';
-- and phone like "%9" and phone not like "%9"
-- where last_name like "%y"
-- where birth_date between "1990-01-01" and "2000-01-01";
-- where points between 3000 and 10000
-- where points>3000 and points<10000

SELECT *
 FROM customers
 WHERE  state IN ('FL','VA','GA');
USE store;
SELECT *
FROM products
where quantity_in_stock='49' or quantity_in_stock='38' or quantity_in_stock='72';
USE store;
SELECT *
FROM products
where quantity_in_stock IN ('49','38','72');
USE store;
SELECT *
from customers
WHERE birth_date between '1990-01-01' AND  '2000-01-01';
USE store;
SELECT *
from customers
WHERE points BETWEEN '3000' AND '10000';
USE store;
SELECT *
from customers
WHERE last_name LIKE 'MacCaffrey';
USE store;
SELECT *
from customers
WHERE last_name LIKE '%age%';
USE store;
SELECT *
from customers
WHERE last_name LIKE '%y';
USE store;
SELECT *
from customers
WHERE last_name LIKE 'b%';
USE store;
SELECT *
from customers
WHERE address like '%TRAIL%' or address  like '%AVENUE%';
USE store;
SELECT *
from customers
WHERE phone like '%9';
USE store;
SELECT *
from customers
WHERE phone  not like '%9';
SELECT*
FROM customers
WHERE last_name LIKE '_y';
USE store;
SELECT *
from customers
WHERE last_name like '_____y' ;
USE store;
SELECT *
from customers
WHERE last_name like 'b____y';
USE store;
SELECT*
FROM customers
Where last_name LIKE 'b%y';
USE store;
SELECT*
FROM customers
Where last_name REGEXP '^Mac|field$|rose';
/*
-- ^-starts with
-- $-ends with
-- |-logical one
[.]- set

*/

USE store;
SELECT *
FROM customers
WHERE last_name REGEXP "[bc]e";


SELECT *
FROM employees
WHERE first_name LIKE "%b%" AND first_name LIKE "%c%";

SELECT *
FROM employees
WHERE first_name REGEXP 'b' AND first_name REGEXP 'c';

SELECT *
FROM employees
WHERE first_name REGEXP 'b' AND first_name REGEXP 'c';

USE store;
SELECT *
FROM orders
WHERE status = "1";

/* or

*/
SELECT *
FROM orders
WHERE shipper_id is null;

-- GET the orderrs that are shipped --

SELECT *
FROM orders
WHERE shipper_id is not null
LIMIT 3;
-- limit -3 want only 3 --


SELECT *
FROM orders
WHERE shipper_id is not null
LIMIT 1,3;
-- limit 1,3 means doesn't wanth 1st start from 2 and want the three rows;

SELECT *
FROM order_items
ORDER BY unit_price desc;

-- first 3 customers--
USE store;
select *
from customers
limit 3;

-- get 3 loyal customers--
USE store;
SELECT 
    *
FROM
    customers
ORDER BY points DESC
LIMIT 3;

use exercise_hr;
select*
from employees 
order by last_name;

-- find employee names of all the employees working in the 'IT'department --

select department_id
from departments
where department_name ='IT';

Select employee_id, first_name, department_id
from employees
where department_id =60;

use exercise_hr;
select*
from employees inner join departments
ON employees.department_id = departments.department_id;


select employee_id, e.department_id, d.department_id, d.department_name
from employees as e inner join departments as d
ON e.employees, department_id = d.department_id

USE exercise_hr;
select employee_id,first_name,last_name,e.department_id
FRom employee as e inner join departments as d
on e.department_id = d.department_id
where department_id="IT"




