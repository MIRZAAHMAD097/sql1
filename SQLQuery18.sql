---------hw18

CREATE TABLE employees_18 ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2) );

INSERT INTO employees_18 (id, name, salary) VALUES (1, 'Alice', 50000), (2, 'Bob', 60000), (3, 'Charlie', 50000);
-------1
select * from employees_18
select name, salary
from employees_18
where salary=(select min(salary)
from employees_18);

---------2
CREATE TABLE products_18 ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2) );

INSERT INTO products_18  (id, product_name, price) VALUES (1, 'Laptop', 1200), (2, 'Tablet', 400), (3, 'Smartphone', 800), (4, 'Monitor', 300);

select * from products_18
select price
from products_18
where price>(select avg(price) from products_18);

------3



CREATE TABLE departments_18 (
    id INT PRIMARY KEY,
    department_name VARCHAR(100)
);


INSERT INTO departments_18 (id, department_name) 
VALUES (1, 'Sales'), (2, 'HR');


CREATE TABLE employees_18_1 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments_18 (id)
);


INSERT INTO employees_18_1 (id, name, department_id) 
VALUES (1, 'David', 1), (2, 'Eve', 2), (3, 'Frank', 1);

select * from employees_18_1
select * from departments_18

select id, name
from employees_18_1 e1
where department_id in (
select id
from departments_18 

where department_name='sales');

----------4

CREATE TABLE customers_18 (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE orders_18 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers_18(customer_id) -- Fixed reference to customers_18
);


INSERT INTO customers_18 (customer_id, name)
VALUES (1, 'Grace'), (2, 'Heidi'), (3, 'Ivan');


INSERT INTO orders_18 (order_id, customer_id)
VALUES (1, 1), (2, 1);

select * from orders_18
select * from customers_18

select  customer_id, name
from customers_18
where customer_id not in(
select distinct customer_id
from orders_18);

-------5

CREATE TABLE products_18_1 ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), category_id INT );

INSERT INTO products_18_1 (id, product_name, price, category_id) VALUES (1, 'Tablet', 400, 1), (2, 'Laptop', 1500, 1), (3, 'Headphones', 200, 2), (4, 'Speakers', 300, 2);

select * from products_18_1

select product_name, category_id, price
from products_18_1 p1
where price=(
select max(price)
from products_18_1 p2
where p1.category_id=p2.category_id);


--------6
-- Create the departments table
CREATE TABLE departments_18_1 (
    id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create the employees table with the correct foreign key reference
CREATE TABLE employees_18_2 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments_18_1(id) -- Fixed reference to departments_18_1
);

-- Insert data into the departments table
INSERT INTO departments_18_1 (id, department_name)
VALUES (1, 'IT'), (2, 'Sales');

-- Insert data into the employees table
INSERT INTO employees_18_2 (id, name, salary, department_id)
VALUES (1, 'Jack', 80000, 1), (2, 'Karen', 70000, 1), (3, 'Leo', 60000, 2);

select * from departments_18_1
select * from employees_18_2

select name, salary,department_id
from employees_18_2
where department_id=(select top 1 department_id
from(
select department_id, avg(salary) avgtotal
from employees_18_2
group by department_id
) depavgsalary);

-----7
CREATE TABLE employees_avg ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT );

INSERT INTO employees_avg (id, name, salary, department_id) VALUES (1, 'Mike', 50000, 1), (2, 'Nina', 75000, 1), (3, 'Olivia', 40000, 2), (4, 'Paul', 55000, 2);

select * from employees_avg

select name, department_id, salary
from employees_avg
where salary>(select avg(salary) from employees_avg
);

--------8
CREATE TABLE students ( student_id INT PRIMARY KEY, name VARCHAR(100) );

CREATE TABLE grades ( student_id INT, course_id INT, grade DECIMAL(4, 2), FOREIGN KEY (student_id) REFERENCES students(student_id) );

INSERT INTO students (student_id, name) VALUES (1, 'Sarah'), (2, 'Tom'), (3, 'Uma');

INSERT INTO grades (student_id, course_id, grade) VALUES (1, 101, 95), (2, 101, 85), (3, 102, 90), (1, 102, 80);

select * from students
select * from grades

select s.student_id, name
from students s
join grades g on
s.student_id=g.student_id
where g.grade=(
select max(g2.grade)
from grades g2
where g.course_id=g2.course_id
)
order by student_id;

------9
CREATE TABLE products_h ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), category_id INT );

INSERT INTO products_h (id, product_name, price, category_id) VALUES (1, 'Phone', 800, 1), (2, 'Laptop', 1500, 1), (3, 'Tablet', 600, 1), (4, 'Smartwatch', 300, 1), (5, 'Headphones', 200, 2), (6, 'Speakers', 300, 2), (7, 'Earbuds', 100, 2);

select * from products_h
go
with top3rank as(
select product_name, price, category_id,
rank() over(partition by category_id order by price desc) pricerank
from products_h)
select product_name, price, category_id
from top3rank
where pricerank=3;

select product_name, price, category_id
from (select product_name, price, category_id,
rank() over(partition by category_id order by price desc) as pricerank
from products_h) rankproduct
where pricerank=3;

--------10
CREATE TABLE employees_18_3 ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT );

INSERT INTO employees_18_3 (id, name, salary, department_id) VALUES (1, 'Alex', 70000, 1), (2, 'Blake', 90000, 1), (3, 'Casey', 50000, 2), (4, 'Dana', 60000, 2), (5, 'Evan', 75000, 1);

select * from employees_18_3

select name, department_id, salary
from employees_18_3
where salary>(select avg(salary) from employees_18_3)
and salary<(
select max(salary)
from employees_18_3 e2
where employees_18_3.department_id=e2.department_id);

