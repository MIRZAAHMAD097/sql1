
----easy-level  task
---1


select  min(price) 
from Products

---2
select * from Employees
select max(salary)
from Employees

---3
select count(*)
from Customers

---4
select * from Categories
select count(distinct categoryname)
from Categories

----5
select * from Sales
select sum(saleamount)
from sales
where productid=7

----6
select * from Employees

select avg(age)
from Employees

----7
select Departmentid, count(employeeid) employeenumber
from Employees
group by DepartmentID

----8
select * from Products
select   category,
max(price) maxprice,
min(price) minprice
from Products
group by Category

---9
select * from Sales
select sum(saleamount)
from sales

----10
select * from Employees
select departmentid, count(employeeid) employeenumber
from Employees
group by DepartmentID
having count(employeeid)>5

---medium-level tasks

---11
select * from Sales
select productid, sum(saleamount) total,avg(saleamount) avgtotal
from Sales
group by ProductID

----12
CREATE TABLE Employees_2 ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50) NULL, LastName VARCHAR(50) NULL, DepartmentName VARCHAR(50), Salary DECIMAL(10, 2), HireDate DATE, Age INT, Email VARCHAR(100) NULL, Country VARCHAR(50) );

INSERT INTO Employees_2 (EmployeeID, FirstName, LastName, DepartmentName, Salary, HireDate, Age, Email, Country) VALUES (1, 'John', 'Doe', 'IT', 55000.00, '2020-01-01', 30, 'johndoe@example.com', 'USA'), (2, 'Jane', 'Smith', 'HR', 65000.00, '2019-03-15', 28, 'janesmith@example.com', 'USA'), (3, NULL, 'Johnson', 'Finance', 45000.00, '2021-05-10', 25, NULL, 'Canada'), (4, 'James', 'Brown', 'Marketing', 60000.00, '2018-07-22', 35, 'jamesbrown@example.com', 'UK'), (5, 'Patricia', NULL, 'HR', 70000.00, '2017-08-30', 40, NULL, 'USA'), (6, 'Michael', 'Miller', 'IT', 75000.00, '2020-12-12', 27, 'michaelm@example.com', 'Germany'), (7, 'Linda', NULL, 'Finance', 48000.00, '2016-11-02', 42, NULL, 'Canada'), (8, 'David', 'Moore', 'Marketing', 85000.00, '2021-09-01', 29, 'davidm@example.com', 'UK'), (9, 'Elizabeth', 'Taylor', 'HR', 60000.00, '2019-05-18', 31, 'elizabetht@example.com', 'USA'), (10, 'William', NULL, 'IT', 64000.00, '2020-04-10', 26, NULL, 'Germany'), (11, NULL, 'Thomas', 'Finance', 47000.00, '2017-01-25', 38, NULL, 'Canada'), (12, 'Joseph', 'Jackson', 'Marketing', 78000.00, '2016-09-30', 44, 'josephj@example.com', 'UK'), (13, 'Karen', 'White', 'HR', 59000.00, '2018-06-10', 33, 'karenw@example.com', 'USA'), (14, 'Steven', NULL, 'IT', 71000.00, '2021-07-15', 24, NULL, 'Germany'), (15, 'Nancy', 'Clark', 'Finance', 45000.00, '2020-02-20', 27, 'nancyc@example.com', 'Canada'), (16, 'George', 'Lewis', 'Marketing', 80000.00, '2019-11-10', 36, 'georgel@example.com', 'UK'), (17, 'Betty', NULL, 'HR', 55000.00, '2017-04-05', 41, NULL, 'USA'), (18, 'Samuel', 'Walker', 'IT', 72000.00, '2021-03-22', 23, 'samuelw@example.com', 'Germany'), (19, 'Helen', 'Hall', 'Finance', 49000.00, '2018-10-16', 34, 'helenh@example.com', 'Canada'), (20, NULL, 'Allen', 'Marketing', 90000.00, '2015-08-11', 50, NULL, 'UK'), (21, 'Betty', 'Young', 'HR', 53000.00, '2020-05-17', 28, 'bettyy@example.com', 'USA'), (22, 'Frank', NULL, 'IT', 67000.00, '2021-02-02', 26, 'frankk@example.com', 'Germany'), (23, 'Deborah', 'Scott', 'Finance', 47000.00, '2019-07-09', 29, NULL, 'Canada'), (24, 'Matthew', 'Green', 'Marketing', 76000.00, '2021-01-15', 30, 'matthewg@example.com', 'UK'), (25, NULL, 'Adams', 'HR', 54000.00, '2020-06-21', 27, NULL, 'USA'), (26, 'Paul', 'Nelson', 'IT', 71000.00, '2018-12-03', 37, 'pauln@example.com', 'Germany'), (27, 'Margaret', NULL, 'Finance', 46000.00, '2020-08-19', 25, 'margaretc@example.com', 'Canada'), (28, 'Anthony', 'Mitchell', 'Marketing', 82000.00, '2021-04-10', 29, NULL, 'UK'), (29, 'Lisa', 'Perez', 'HR', 60000.00, '2021-03-05', 24, 'lisap@example.com', 'USA'), (30, NULL, 'Roberts', 'IT', 69000.00, '2019-09-24', 32, NULL, 'Germany'), (31, 'Jessica', 'Gonzalez', 'Finance', 47000.00, '2017-12-13', 38, 'jessicag@example.com', 'Canada'), (32, 'Brian', NULL, 'Marketing', 85000.00, '2018-11-05', 35, NULL, 'UK'), (33, 'Dorothy', 'Evans', 'HR', 59000.00, '2019-06-11', 31, 'dorothye@example.com', 'USA'), (34, 'Matthew', 'Carter', 'IT', 70000.00, '2020-01-29', 29, 'matthewc@example.com', 'Germany'), (35, NULL, 'Martinez', 'Finance', 51000.00, '2021-06-06', 22, NULL, 'Canada'), (36, 'Daniel', 'Perez', 'Marketing', 83000.00, '2021-07-01', 30, 'danielp@example.com', 'UK'), (37, 'Catherine', 'Roberts', 'HR', 60000.00, '2020-09-19', 27, 'catheriner@example.com', 'USA'), (38, 'Ronald', NULL, 'IT', 68000.00, '2017-02-04', 39, NULL, 'Germany'), (39, 'Angela', 'Jenkins', 'Finance', 52000.00, '2018-04-23', 34, 'angelaj@example.com', 'Canada'), (40, 'Gary', 'Wright', 'Marketing', 87000.00, '2021-01-10', 29, NULL, 'UK');

select * from Employees_2

select  count(employeeid) HR
from Employees_2
where DepartmentName='HR'

----13
select * from Employees_2
select departmentname,
max(salary) highest, min(salary) lowest
from Employees_2
group by departmentname

----14
select departmentname, avg(salary)
from Employees_2
group by DepartmentName

----15
select departmentname, avg(salary),
count(employeeid) employeenumber
from Employees_2
group by DepartmentName

----16
select * from Products
select category, avg(price)
from Products
group by Category
having avg(price)>400

----17
select * from Sales
select  year(saledate),
sum(saleamount)
from sales
group by year(saledate)

USE Homework_new_tables


----18
select * from Orders
select customerid, count(orderid)
from orders
group by CustomerID
having count(orderid)>3

----19
select * from Employees_2

select departmentname, sum(salary),
count(employeeid)
from Employees_2
group by DepartmentName
having sum(salary)>500000

-----hard-level tasks

-----20
select * from Products

select category,
avg(price)
from Products
group by category
having avg(price)>200

----21
select * from Sales
select customerid,sum(saleamount)
from sales
group by CustomerID
having sum(saleamount)>1500

----22
select * from Employees_2
select departmentname, sum(salary) total,
avg(salary) totalavg
from Employees_2
group by DepartmentName
having avg(salary)>65000

---23
select * from Orders
select customerid,min(totalamount),
max(totalamount)
from Orders
group by CustomerID
having min(totalamount)<50

----24
select * from orders
select month(orderdate) month,
sum(totalamount) total,
count(distinct productid) proid
from orders
group by month(orderdate)
-----having count(distinct productid)>8


select month(orderdate) month,
sum(totalamount) total,
count(distinct orderid) soldproduct
from orders
group by month(orderdate)

----25
select * from orders
select year(orderdate) orderyear, min(quantity)minorder,
max(quantity) maxorder
from orders
group by year(OrderDate)

