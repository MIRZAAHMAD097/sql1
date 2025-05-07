create database Homework
use homework
----------hw10

----------task 1
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
Name VARCHAR(50), 
DepartmentID INT 
);

CREATE TABLE Departments ( 
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50) 
);

INSERT INTO Employees 
VALUES (1, 'Alice', 101),
(2, 'Bob', 102), 
(3, 'Charlie', NULL);

INSERT INTO Departments
VALUES (101, 'HR'),
(102, 'IT'), 
(103, 'Finance');
select * from Employees
select * from Departments

select e.employeeid,e.Name, d.departmentname
from Employees e
inner join Departments d on e.DepartmentID=d.DepartmentID

-----task 2

CREATE TABLE Students ( 
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50),
ClassID INT
);

CREATE TABLE Classes ( 
ClassID INT PRIMARY KEY,
ClassName VARCHAR(50) 
);

INSERT INTO Students
VALUES (1, 'John', 201), 
(2, 'Emma', NULL), 
(3, 'Liam', 202);

INSERT INTO Classes 
VALUES (201, 'Math'),
(202, 'Science');

select *from Students
select * from Classes

select s.studentname, c.classname
from Students s
left join Classes c on s.ClassID=c.ClassID

------------task 3

CREATE TABLE Orders ( 
OrderID INT PRIMARY KEY, 
CustomerID INT, 
OrderDate DATE );

CREATE TABLE Customers ( 
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(50) 
);

INSERT INTO Orders 
VALUES 
(1, 301, '2024-11-01'), 
(2, 302, '2024-11-05');

INSERT INTO Customers 
VALUES 
(301, 'Alice'), 
(302, 'Bob'),
(303, 'Charlie');

select * from Orders
select * from Customers

select c.customername,o.orderdate
from Orders o
right join Customers c on o.CustomerID=c.CustomerID


-----task 4

CREATE TABLE Products (
ProductID INT PRIMARY KEY, 
ProductName VARCHAR(50)
);

CREATE TABLE Sales ( 
SaleID INT PRIMARY KEY,
ProductID INT, 
Quantity INT 
);

INSERT INTO Products VALUES
(1, 'Laptop'), 
(2, 'Tablet'), 
(3, 'Phone');

INSERT INTO Sales VALUES 
(100, 1, 10), 
(101, 2, 5), 
(102, NULL, 8);

select * from Products
select * from Sales

select p.productid, p.productname, s.quantity
from Products p
full outer join Sales s 
on p.ProductID=s.ProductID


-------task 5
select * from Employees
alter table employees
add managerid int

insert into Employees(managerid)
values(1),(2),(3);

select e.name, m.manager
from Employees e
join manager m on e.managerid=m.managerid


-------task 6

CREATE TABLE Colors ( 
ColorID INT PRIMARY KEY, 
ColorName VARCHAR(50)
);

CREATE TABLE Sizes ( 
SizeID INT PRIMARY KEY, 
SizeName VARCHAR(50) 
);

INSERT INTO Colors VALUES 
(1, 'Red'), 
(2, 'Blue');

INSERT INTO Sizes VALUES 
(1, 'Small'), 
(2, 'Medium');

select * from Colors
select * from Sizes

select * from Colors
cross join Sizes

--------task 7

CREATE TABLE Movies ( 
MovieID INT PRIMARY KEY, 
Title VARCHAR(50), 
ReleaseYear INT );

CREATE TABLE Actors ( 
ActorID INT PRIMARY KEY,
Name VARCHAR(50), 
MovieID INT );

INSERT INTO Movies VALUES 
(1, 'Inception', 2010), 
(2, 'Interstellar', 2014), 
(3, 'Dune', 2021);

INSERT INTO Actors VALUES 
(101, 'Leonardo DiCaprio', 1), 
(102, 'Matthew McConaughey', 2), 
(103, 'Timoth?e Chalamet', 3);

select * from Movies
select * from Actors

select m.title, a.name, m.releaseyear
from Movies m
join Actors a on m.MovieID=a.MovieID
where m.ReleaseYear>'2015'

-------task 8

CREATE TABLE Orders_date (
OrderID INT PRIMARY KEY, 
CustomerID INT,
OrderDate DATE );

CREATE TABLE Customers_name ( 
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(50) );

CREATE TABLE OrderDetails ( 
OrderDetailID INT PRIMARY KEY,
OrderID INT, 
ProductID INT );

INSERT INTO Orders_date VALUES 
(1, 401, '2024-11-01'), 
(2, 402, '2024-11-05');

INSERT INTO Customers_name VALUES 
(401, 'Alice'), 
(402, 'Bob');

INSERT INTO OrderDetails VALUES 
(1001, 1, 501), 
(1002, 2, 502);

select * from Orders_date
select * from Customers_name
select * from OrderDetails

select o.orderid,c.customername,o.orderdate,d.productid
from Orders_date o
inner join Customers_name c 
on o.CustomerID=c.CustomerID
inner join OrderDetails d
on o.OrderID=d.OrderID

-------task 9

CREATE TABLE Sales_sum ( 
SaleID INT PRIMARY KEY,
ProductID INT, 
Quantity INT );

CREATE TABLE Products_sum (
ProductID INT PRIMARY KEY, 
ProductName VARCHAR(50),
Price DECIMAL(10, 2) 
);

INSERT INTO Sales_sum VALUES 
(1, 601, 3), 
(2, 602, 5), 
(3, 601, 2);
delete Products_sum
INSERT INTO Products_sum VALUES 
(601, 'TV', 500.00),
(602, 'Speaker', 150.00);

select * from Sales_sum
select * from Products_sum

select  p.productname,
sum(s.quantity * p.price) totalsale
from Sales_sum s
join Products_sum p 
on s.ProductID=p.ProductID
group by p.ProductName
