create database hw_12_20
use hw_12_20

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00),
(11, 5, 'Elizabeth', 'Hernández', 95000.00),
(12, 2, 'David', 'Lopez', 88000.00),
(13, 3, 'Joseph', 'Martinez', 74000.00),
(14, 4, 'Susan', 'Rodriguez', 80000.00),
(15, 5, 'Daniel', 'Wilson', 89000.00),
(16, 1, 'Karen', 'Moore', 67000.00),
(17, 2, 'Charles', 'Taylor', 71000.00),
(18, 3, 'Christopher', 'Anderson', 76000.00),
(19, 4, 'Sarah', 'Thomas', 83000.00),
(20, 5, 'Jessica', 'Jackson', 92000.00),
(21, 1, 'Kevin', 'White', 64000.00),
(22, 2, 'Nancy', 'Harris', 78000.00),
(23, 3, 'Steven', 'Clark', 78000.00),
(24, 4, 'Betty', 'Lewis', 79000.00),
(25, 5, 'Ryan', 'Young', 94000.00),
(26, 1, 'Daniel', 'King', 68000.00),
(27, 2, 'Dorothy', 'Scott', 73000.00),
(28, 3, 'Ethan', 'Adams', 77000.00),
(29, 4, 'Megan', 'Baker', 82000.00),
(30, 5, 'Anthony', 'Green', 88000.00),
(31, 1, 'Laura', 'Nelson', 66000.00),
(32, 2, 'Ryan', 'Carter', 71000.00),
(33, 3, 'George', 'Mitchell', 76000.00),
(34, 4, 'Deborah', 'Perez', 79000.00),
(35, 5, 'Brian', 'Roberts', 90000.00),
(36, 1, 'Alice', 'Garcia', 60000.00),
(37, 2, 'Jack', 'Evans', 72000.00),
(38, 3, 'Ashley', 'Gonzalez', 77000.00),
(39, 4, 'Evan', 'Stewart', 80000.00),
(40, 5, 'Sophia', 'King', 93000.00);
2. Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');
3. Sales Table
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (SalesID, ProductID, SalesAmount, SaleDate) VALUES
(1, 1, 1500.00, '2025-01-01'),
(2, 2, 2000.00, '2025-01-02'),
(3, 3, 1200.00, '2025-01-03'),
(4, 4, 1800.00, '2025-01-04'),
(5, 5, 2200.00, '2025-01-05'),
(6, 6, 1400.00, '2025-01-06'),
(7, 1, 2500.00, '2025-01-07'),
(8, 2, 1700.00, '2025-01-08'),
(9, 3, 1600.00, '2025-01-09'),
(10, 4, 1900.00, '2025-01-10'),
(11, 5, 2100.00, '2025-01-11'),
(12, 6, 1300.00, '2025-01-12'),
(13, 1, 2000.00, '2025-01-13'),
(14, 2, 1800.00, '2025-01-14'),
(15, 3, 1500.00, '2025-01-15'),
(16, 4, 2200.00, '2025-01-16'),
(17, 5, 1700.00, '2025-01-17'),
(18, 6, 1600.00, '2025-01-18'),
(19, 1, 2500.00, '2025-01-19'),
(20, 2, 1800.00, '2025-01-20'),
(21, 3, 1400.00, '2025-01-21'),
(22, 4, 1900.00, '2025-01-22'),
(23, 5, 2100.00, '2025-01-23'),
(24, 6, 1600.00, '2025-01-24'),
(25, 1, 1500.00, '2025-01-25'),
(26, 2, 2000.00, '2025-01-26'),
(27, 3, 2200.00, '2025-01-27'),
(28, 4, 1300.00, '2025-01-28'),
(29, 5, 2500.00, '2025-01-29'),
(30, 6, 1800.00, '2025-01-30'),
(31, 1, 2100.00, '2025-02-01'),
(32, 2, 1700.00, '2025-02-02'),
(33, 3, 1600.00, '2025-02-03'),
(34, 4, 1900.00, '2025-02-04'),
(35, 5, 2000.00, '2025-02-05'),
(36, 6, 2200.00, '2025-02-06'),
(37, 1, 1300.00, '2025-02-07'),
(38, 2, 2500.00, '2025-02-08'),
(39, 3, 1400.00, '2025-02-09'),
(40, 4, 1800.00, '2025-02-10');
4. Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1000.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 500.00),
(4, 'Monitor', 300.00),
(5, 'Headphones', 150.00),
(6, 'Mouse', 25.00),
(7, 'Keyboard', 50.00),
(8, 'Camera', 400.00),
(9, 'Printer', 150.00),
(10, 'Smartwatch', 200.00),
(11, 'Speakers', 80.00),
(12, 'Flash Drive', 20.00),
(13, 'Hard Drive', 120.00),
(14, 'External Battery', 30.00),
(15, 'Charger', 15.00),
(16, 'Router', 70.00),
(17, 'Graphics Card', 500.00),
(18, 'Processor', 300.00),
(19, 'RAM', 120.00),
(20, 'Motherboard', 150.00),
(21, 'Power Supply', 80.00),
(22, 'Webcam', 40.00),
(23, 'Microphone', 60.00),
(24, 'Projector', 400.00),
(25, 'Electric Fan', 25.00),
(26, 'Air Conditioner', 250.00),
(27, 'Refrigerator', 500.00),
(28, 'Washing Machine', 350.00),
(29, 'Microwave', 100.00),
(30, 'Blender', 80.00),
(31, 'Vacuum Cleaner', 150.00),
(32, 'Coffee Maker', 90.00),
(33, 'Toaster', 40.00),
(34, 'Water Heater', 120.00),
(35, 'Iron', 30.00),
(36, 'Hair Dryer', 40.00),
(37, 'Electric Toothbrush', 50.00),
(38, 'Shaver', 60.00),
(39, 'Electric Kettle', 30.00),
(40, 'Rice Cooker', 60.00);



------easy task
---1
select * from Employees
select * from Sales

select employeeid, total_sales
from (
	select employeeid, sum(salesamount) total_sales
	from sales 
	group by employeeid) as emp_sale

-----2
with emp_avg_salary as (
select avg(salary) avg_salary
from Employees)
select avg_salary
from emp_avg_salary;

-----3
select * from Products
select * from Sales

select productid,  highest_sale
 from (
select productid, sum(salesamount) highest_sale
from sales
group by productid)
as salestable;

----4
select * from Employees

with Emp_sales_min_5 as (
select Employeeid, count(saleid) sales_qauntity
from sales
group by employeeid
having count(saleid)>5)
select Employees.FirstName
from emp_sales_min_5
join Employees on emp_sales_min_5.employeeid=Employees.EmployeeID


CREATE TABLE Employees_2(
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees_2 (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00),
(11, 5, 'Elizabeth', 'Hernández', 95000.00),
(12, 2, 'David', 'Lopez', 88000.00),
(13, 3, 'Joseph', 'Martinez', 74000.00),
(14, 4, 'Susan', 'Rodriguez', 80000.00),
(15, 5, 'Daniel', 'Wilson', 89000.00),
(16, 1, 'Karen', 'Moore', 67000.00),
(17, 2, 'Charles', 'Taylor', 71000.00),
(18, 3, 'Christopher', 'Anderson', 76000.00),
(19, 4, 'Sarah', 'Thomas', 83000.00),
(20, 5, 'Jessica', 'Jackson', 92000.00),
(21, 1, 'Kevin', 'White', 64000.00),
(22, 2, 'Nancy', 'Harris', 78000.00),
(23, 3, 'Steven', 'Clark', 78000.00),
(24, 4, 'Betty', 'Lewis', 79000.00),
(25, 5, 'Ryan', 'Young', 94000.00),
(26, 1, 'Daniel', 'King', 68000.00),
(27, 2, 'Dorothy', 'Scott', 73000.00),
(28, 3, 'Ethan', 'Adams', 77000.00),
(29, 4, 'Megan', 'Baker', 82000.00),
(30, 5, 'Anthony', 'Green', 88000.00),
(31, 1, 'Laura', 'Nelson', 66000.00),
(32, 2, 'Ryan', 'Carter', 71000.00),
(33, 3, 'George', 'Mitchell', 76000.00),
(34, 4, 'Deborah', 'Perez', 79000.00),
(35, 5, 'Brian', 'Roberts', 90000.00),
(36, 1, 'Alice', 'Garcia', 60000.00),
(37, 2, 'Jack', 'Evans', 72000.00),
(38, 3, 'Ashley', 'Gonzalez', 77000.00),
(39, 4, 'Evan', 'Stewart', 80000.00),
(40, 5, 'Sophia', 'King', 93000.00);
2. Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
select * from Departments
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');
3. Sales Table
CREATE TABLE Sales2(
    SalesID INT PRIMARY KEY,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
	emp_id INT,
    SaleDate DATE,
	customerid int,
	foreign key (emp_id) references employees(employeeID)

);


INSERT INTO Sales2(SalesID,ProductID , SalesAmount , emp_id,  SaleDate,customerid)
VALUES
(1, 1, 1500.00,1, '2025-01-01',1),
(2, 2, 2000.00,2, '2025-01-02',2),
(3, 3, 1200.00,3, '2025-01-03',3),
(4, 4, 1800.00,4, '2025-01-04',4),
(5, 5, 2200.00,5, '2025-01-05',5),
(6, 6, 1400.00,6, '2025-01-06',6),
(7, 7, 2500.00,7, '2025-01-07',7),
(8, 8, 1700.00,8, '2025-01-08',8),
(9, 9, 1600.00, 9,'2025-01-09',9),
(10, 10, 1900.00, 10,'2025-01-10',10),
(11, 11, 2100.00, 11,'2025-01-11',11),
(12, 12, 1300.00,12, '2025-01-12',12),
(13, 13, 2000.00,13, '2025-01-13',13),
(14, 14, 1800.00, 14,'2025-01-14',14),
(15, 15, 1500.00, 15,'2025-01-15',15),
(16, 16, 2200.00, 16,'2025-01-16',16),
(17, 17, 1700.00, 17,'2025-01-17',17),
(18, 18, 1600.00, 18,'2025-01-18',18),
(19, 19, 2500.00, 19,'2025-01-19',19),
(20, 20, 1800.00, 20,'2025-01-20',20),
(21, 21, 1400.00, 21,'2025-01-21',21),
(22, 22, 1900.00, 22,'2025-01-22',22),
(23, 23, 2100.00, 23,'2025-01-23',23),
(24, 24, 1600.00, 24,'2025-01-24',24),
(25, 25, 1500.00, 25,'2025-01-25',25),
(26, 26, 2000.00, 26,'2025-01-26',26),
(27, 27, 2200.00, 27,'2025-01-27',27),
(28, 28, 1300.00, 28,'2025-01-28',28),
(29, 29, 2500.00, 29,'2025-01-29',29),
(30, 30, 1800.00, 30,'2025-01-30',30),
(31, 31, 2100.00, 31,'2025-02-01',31),
(32, 32, 1700.00, 32,'2025-02-02',32),
(33, 33, 1600.00, 33,'2025-02-03',33),
(34, 34, 1900.00, 34,'2025-02-04',34),
(35, 35, 2000.00, 35,'2025-02-05',35),
(36, 36, 2200.00, 36,'2025-02-06',36),
(37, 37, 1300.00, 37,'2025-02-07',37),
(38, 38, 2500.00, 38,'2025-02-08',38),
(39, 39, 1400.00, 39,'2025-02-09',39),
(40, 40, 1800.00, 40,'2025-02-10',40);
4. Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
select * from Products
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1000.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 500.00),
(4, 'Monitor', 300.00),
(5, 'Headphones', 150.00),
(6, 'Mouse', 25.00),
(7, 'Keyboard', 50.00),
(8, 'Camera', 400.00),
(9, 'Printer', 150.00),
(10, 'Smartwatch', 200.00),
(11, 'Speakers', 80.00),
(12, 'Flash Drive', 20.00),
(13, 'Hard Drive', 120.00),
(14, 'External Battery', 30.00),
(15, 'Charger', 15.00),
(16, 'Router', 70.00),
(17, 'Graphics Card', 500.00),
(18, 'Processor', 300.00),
(19, 'RAM', 120.00),
(20, 'Motherboard', 150.00),
(21, 'Power Supply', 80.00),
(22, 'Webcam', 40.00),
(23, 'Microphone', 60.00),
(24, 'Projector', 400.00),
(25, 'Electric Fan', 25.00),
(26, 'Air Conditioner', 250.00),
(27, 'Refrigerator', 500.00),
(28, 'Washing Machine', 350.00),
(29, 'Microwave', 100.00),
(30, 'Blender', 80.00),
(31, 'Vacuum Cleaner', 150.00),
(32, 'Coffee Maker', 90.00),
(33, 'Toaster', 40.00),
(34, 'Water Heater', 120.00),
(35, 'Iron', 30.00),
(36, 'Hair Dryer', 40.00),
(37, 'Electric Toothbrush', 50.00),
(38, 'Shaver', 60.00),
(39, 'Electric Kettle', 30.00),
(40, 'Rice Cooker', 60.00);



CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'Alice Johnson', 'New York'),
(2, 'Bob Smith', 'Los Angeles'),
(3, 'Charlie Brown', 'Chicago'),
(4, 'David Clark', 'Houston'),
(5, 'Eva Williams', 'Phoenix'),
(6, 'Frank Miller', 'San Francisco'),
(7, 'Grace Taylor', 'Boston'),
(8, 'Henry Martinez', 'Miami'),
(9, 'Irene Davis', 'Dallas'),
(10, 'James Moore', 'Atlanta'),
(11, 'Kathy Walker', 'Washington'),
(12, 'Leo Hernandez', 'Austin'),
(13, 'Maria White', 'Seattle'),
(14, 'Nancy Harris', 'Detroit'),
(15, 'Oscar Lewis', 'Philadelphia'),
(16, 'Paul Young', 'San Diego'),
(17, 'Quincy Robinson', 'Denver'),
(18, 'Rachel Scott', 'Portland'),
(19, 'Sam Evans', 'Minneapolis'),
(20, 'Tina King', 'Salt Lake City'),
(21, 'Ursula Wright', 'Orlando'),
(22, 'Victor Green', 'Las Vegas'),
(23, 'Walter Adams', 'Cleveland'),
(24, 'Xander Lopez', 'Tucson'),
(25, 'Yvonne Perez', 'Indianapolis'),
(26, 'Zachary Harris', 'Columbus'),
(27, 'Alice Moore', 'Memphis'),
(28, 'Bobby Wilson', 'Oklahoma City'),
(29, 'Catherine Lewis', 'Louisville'),
(30, 'Daniel Jackson', 'Nashville'),
(31, 'Eleanor White', 'Raleigh'),
(32, 'Felix Clark', 'New Orleans'),
(33, 'Grace Allen', 'St. Louis'),
(34, 'Howard Young', 'San Antonio'),
(35, 'Ivy King', 'Las Vegas'),
(36, 'John Wright', 'San Jose'),
(37, 'Kimberly Brown', 'Austin'),
(38, 'Liam Scott', 'Phoenix'),
(39, 'Monica Hall', 'Denver'),
(40, 'Neil Adams', 'Chicago');

----5

select * from Customers
select * from Sales_1
select  customerid, totalamount
from(
select top 5 customerid, sum(SalesAmount) totalamount
from sales_1
group by customerid
order by sum(SalesAmount) desc
) as top5customers


----6
select * from Products
select * from Sales_1

with productscte as(
select productid, sum(salesamount) as totalsales
from Sales_1
group by productid
)
select productid, totalsales
from productscte
where totalsales>500


Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderAmount DECIMAL(10, 2),
    OrderDate DATE
);

INSERT INTO Orders (OrderID, CustomerID, OrderAmount, OrderDate) VALUES
(1, 101, 250.00, '2025-01-01'),
(2, 102, 450.00, '2025-01-02'),
(3, 103, 120.00, '2025-01-03'),
(4, 104, 340.00, '2025-01-04'),
(5, 105, 500.00, '2025-01-05'),
(6, 106, 200.00, '2025-01-06'),
(7, 107, 750.00, '2025-01-07'),
(8, 108, 300.00, '2025-01-08'),
(9, 109, 600.00, '2025-01-09'),
(10, 110, 400.00, '2025-01-10'),
(11, 101, 250.00, '2025-01-11'),
(12, 102, 550.00, '2025-01-12'),
(13, 103, 350.00, '2025-01-13'),
(14, 104, 600.00, '2025-01-14'),
(15, 105, 200.00, '2025-01-15'),
(16, 106, 700.00, '2025-01-16'),
(17, 107, 450.00, '2025-01-17'),
(18, 108, 550.00, '2025-01-18'),
(19, 109, 500.00, '2025-01-19'),
(20, 110, 400.00, '2025-01-20'),
(21, 101, 700.00, '2025-01-21'),
(22, 102, 150.00, '2025-01-22'),
(23, 103, 600.00, '2025-01-23'),
(24, 104, 250.00, '2025-01-24'),
(25, 105, 550.00, '2025-01-25'),
(26, 106, 120.00, '2025-01-26'),
(27, 107, 600.00, '2025-01-27'),
(28, 108, 500.00, '2025-01-28'),
(29, 109, 450.00, '2025-01-29'),
(30, 110, 300.00, '2025-01-30'),
(31, 101, 350.00, '2025-02-01'),
(32, 102, 400.00, '2025-02-02'),
(33, 103, 600.00, '2025-02-03'),
(34, 104, 450.00, '2025-02-04'),
(35, 105, 300.00, '2025-02-05'),
(36, 106, 500.00, '2025-02-06'),
(37, 107, 400.00, '2025-02-07'),
(38, 108, 250.00, '2025-02-08'),
(39, 109, 650.00, '2025-02-09'),
(40, 110, 200.00, '2025-02-10');



----7
select * from Orders
select * from Customers

select customerid, totalnumber
from(
select count(orderid) totalnumber, customerid
from Orders
group by customerid) as ordertable

----8
select * from Employees_2

with emp_sal_cte as (
select  avg(salary) avg_salary
from Employees_2
)
select employeeid, firstname, lastname,salary
from Employees_2
where salary>(select avg_salary from emp_sal_cte);

----9
select * from Products
select * from Sales_1

select totalsoldnumber from
(
select sum(quantity) totalsoldnumber
from Sales_1
) as soldproduct

----10
select * from Employees
select * from Sales_1

with emp_with_no_sale as(
select emp_id
from Sales_1
group by emp_id
)
select firstname, lastname
from Employees
where EmployeeID not in (select emp_id from emp_with_no_sale);
-----11
select * from Customers
select regionname
from(
select regionname, sum(totalrevenue)
from regions
group by regionname) as region;

----12
select * from Employees_2
with year_cte as (
select employeeid, firstname, lastname,
datediff(year,hiring_date,getdate()) workedyear
from Employees_2)
select employeeid,firstname, lastname, workedyear
from year_cte
where workedyear>5

----13
select * from Orders
select customerid, totalorders
from(
select customerid, count(orderid) totalorders
from Orders
group by CustomerID
having count(orderid) >3) as orderofcustomer

-----14
select * from Employees_2

with emp_dep as(
select EmployeeID, firstname, lastname, sum(sales.SalesAmount) totalsales
from Employees_2
join Sales_1 on Employees_2.EmployeeID=Sales_1.emp_id
group by EmployeeID, firstname, lastname)
select employeeid, firstname, lastname, totalsales
from emp_dep
where totalsales=(select max(totalsales) from emp_dep)


----15
select * from Orders
select customerid, avg_total
from(
select customerid, avg(orderamount) avg_total
from orders
group by CustomerID) as customer_avg

-----16
select * from Employees
select * from Departments

with numberofempcte as(
select departmentid,count(employeeid) as numberofemployee
from Employees 
group by DepartmentID)

select departmentid, numberofemployee
from numberofempcte

----17
select * from Sales
select productid, totalsales
from(
select productid, sum(salesamount) totalsales
from sales
where saledate >=dateadd(quarter,-1,getdate())
group by productid) as quartersales



----easy tasks

---1
with number_cta as(
select 1 as number
union all
select number +1
from number_cta
where number<100
)
select number
from number_cta;

-----2
with number_cta2 as(
select 1 as number
union all
select number*2
from number_cta2
where number<100)
select number
from number_cta2;
use Homework_new_tables
-----3
select * from Sales_2 
select * from Employees_2


select e.employeeid,e.firstname,t.totalsale
from Employees_2 e
join(
select emp_id, sum(salesamount) totalsale
from sales_2
group by emp_id
) as t
on e.EmployeeID=t.totalsale

----4
select * from Employees
with avg_cte AS (
	select  avg(salary) avgsalary
	from Employees_2
)
select avgsalary
from avg_cte

----5
select * from sales
select * from Products

select productid,totalsale
from(
select productid, sum(salesamount) totalsale
from sales
group by productid) as totalsales

select p.productid,p.productname, s.totalsale
from products p
join(
select productid, sum(salesamount) totalsale
from sales
group by productid) as s
on p.ProductID=s.ProductID


CREATE TABLE Employees_x ( EmployeeID INT PRIMARY KEY, DepartmentID INT, FirstName VARCHAR(50), LastName VARCHAR(50), Salary DECIMAL(10, 2) );

INSERT INTO Employees_x (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES (1, 1, 'John', 'Doe', 60000.00), (2, 1, 'Jane', 'Smith', 65000.00), (3, 2, 'James', 'Brown', 70000.00), (4, 3, 'Mary', 'Johnson', 75000.00), (5, 4, 'Linda', 'Williams', 80000.00), (6, 2, 'Michael', 'Jones', 85000.00), (7, 1, 'Robert', 'Miller', 55000.00), (8, 3, 'Patricia', 'Davis', 72000.00), (9, 4, 'Jennifer', 'García', 77000.00), (10, 1, 'William', 'Martínez', 69000.00);

CREATE TABLE Departments_x ( DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50) );

INSERT INTO Departments_x (DepartmentID, DepartmentName) VALUES (1, 'HR'), (2, 'Sales'), (3, 'Marketing'), (4, 'Finance'), (5, 'IT'), (6, 'Operations'), (7, 'Customer Service'), (8, 'R&D'), (9, 'Legal'), (10, 'Logistics');

CREATE TABLE Sales_x ( SalesID INT PRIMARY KEY, EmployeeID INT, ProductID INT, SalesAmount DECIMAL(10, 2), SaleDate DATE );

INSERT INTO Sales_x(SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES (1, 1, 1, 1500.00, '2025-01-01'), (2, 2, 2, 2000.00, '2025-01-02'), (3, 3, 3, 1200.00, '2025-01-03'), (4, 4, 4, 1800.00, '2025-01-04'), (5, 5, 5, 2200.00, '2025-01-05'), (6, 6, 6, 1400.00, '2025-01-06'), (7, 7, 1, 2500.00, '2025-01-07'), (8, 8, 2, 1700.00, '2025-01-08'), (9, 9, 3, 1600.00, '2025-01-09'), (10, 10, 4, 1900.00, '2025-01-10'), (11, 1, 5, 2100.00, '2025-01-11'), (12, 2, 6, 1300.00, '2025-01-12'), (13, 3, 1, 2000.00, '2025-01-13'), (14, 4, 2, 1800.00, '2025-01-14'), (15, 5, 3, 1500.00, '2025-01-15'), (16, 6, 4, 2200.00, '2025-01-16'), (17, 7, 5, 1700.00, '2025-01-17'), (18, 8, 6, 1600.00, '2025-01-18'), (19, 9, 1, 2500.00, '2025-01-19'), (20, 10, 2, 1800.00, '2025-01-20'), (21, 1, 3, 1400.00, '2025-01-21'), (22, 2, 4, 1900.00, '2025-01-22'), (23, 3, 5, 2100.00, '2025-01-23'), (24, 4, 6, 1600.00, '2025-01-24'), (25, 5, 1, 1500.00, '2025-01-25'), (26, 6, 2, 2000.00, '2025-01-26'), (27, 7, 3, 2200.00, '2025-01-27'), (28, 8, 4, 1300.00, '2025-01-28'), (29, 9, 5, 2500.00, '2025-01-29'), (30, 10, 6, 1800.00, '2025-01-30'), (31, 1, 1, 2100.00, '2025-02-01'), (32, 2, 2, 1700.00, '2025-02-02'), (33, 3, 3, 1600.00, '2025-02-03'), (34, 4, 4, 1900.00, '2025-02-04'), (35, 5, 5, 2000.00, '2025-02-05'), (36, 6, 6, 2200.00, '2025-02-06'), (37, 7, 1, 2300.00, '2025-02-07'), (38, 8, 2, 1750.00, '2025-02-08'), (39, 9, 3, 1650.00, '2025-02-09'), (40, 10, 4, 1950.00, '2025-02-10');

CREATE TABLE Products_x( ProductID INT PRIMARY KEY, CategoryID INT, ProductName VARCHAR(100), Price DECIMAL(10, 2) );

INSERT INTO Products_x (ProductID, CategoryID, ProductName, Price) VALUES (1, 1, 'Laptop', 1000.00), (2, 1, 'Smartphone', 800.00), (3, 2, 'Tablet', 500.00), (4, 2, 'Monitor', 300.00), (5, 3, 'Headphones', 150.00), (6, 3, 'Mouse', 25.00), (7, 4, 'Keyboard', 50.00), (8, 4, 'Speaker', 200.00), (9, 5, 'Smartwatch', 250.00), (10, 5, 'Camera', 700.00);


------6
select * from Sales_x
select * from Employees_x

with emp_sale_cte as(
select employeeid, count(salesid) totalsales
from Sales_x
group by EmployeeID
having count(salesid)>5
)
select e.firstname, e.lastname
from emp_sale_cte
join Employees_x e on emp_sale_cte.employeeid=e.EmployeeID

-----7
select * from Sales_x
select * from Products_x

with sales_cte as(
select productid, sum(SalesAmount) totalsale
from Sales_x
group by ProductID
)
select p.productid, sales_cte.totalsale,p.productname
from sales_cte
join Products_x p
on sales_cte.productid=p.ProductID
where sales_cte.totalsale>500

-----8
select * from Employees_x
with emp_salary as(
select  avg(salary) totalavg
from Employees_x
)
select employeeid, firstname, lastname, salary
from Employees_x
where salary>(select totalavg from emp_salary)


----9
select * from Sales_x
select * from Products_x

select p.productid, p.productname,s.totalsales
from Products_x p
join (
select productid, count(salesid) totalsales
from Sales_x
group by ProductID
) s
 on p.productid=s.productid;


 -----10
 select * from Sales_x
 select * from Employees_x

 with emp_sale as (
 select employeeid
 from Sales_x
 group by EmployeeID
 )
 select FirstName, lastname
 from Employees_x
 where EmployeeID not in(select EmployeeID from emp_sale)

 -----medium tasks
 USE Homework_new_tables
 ----1
WITH RECURSIVE factorial AS (
    SELECT 1 AS number, 1 AS factorialnumber -- Base case
    UNION ALL
    SELECT number + 1, factorialnumber * (number + 1)
    FROM factorial
    WHERE number < 10
)
SELECT number, factorialnumber
FROM factorial;

-------2
with recursive fibonaccicte as(
select 0 as number, 0 as fibonacci
union all
select 1 as number, 1 as fibonacci
union all
select number +1,
fibonacci+(
select fibonacci from ficonaccicte
where number=number -1)
from fibonaccicte
where fibonacci number>30

------3
WITH RECURSIVE StringSplitterCTE AS (
    SELECT 
        1 AS Position, 
        SUBSTRING('ExampleString', 1, 1) AS SubstringPart,
        'ExampleString' AS OriginalString
    UNION ALL
    SELECT 
        Position + 1,
        SUBSTRING(OriginalString, Position + 1, 1),
        OriginalString
    FROM 
        StringSplitterCTE
    WHERE 
        Position < LEN(OriginalString)
)
SELECT 
    Position,
    SubstringPart
FROM 
    StringSplitterCTE;

-------4
select * from Employees_x
select * from Sales_x

with employeesalecte as(
select e.employeeid, e.firstname, e.lastname,sum(salesamount) totalsale
from Employees_x e
join Sales_x  on e.EmployeeID=Sales_x.EmployeeID
group by e.employeeid, e.firstname, e.lastname
),
rankemployee as(
select employeeid, firstname, lastname, totalsale,rank() over (order by totalsale desc) as rank
from employeesalecte)
select rank, employeeid,firstname, lastname,totalsale
from rankemployee
order by rank;

----5
select * from Employees_x
select * from Sales_x

select e.employeeid, e.firstname, e.lastname, empsale.totalorder
from Employees_x e
join (
select top 5 employeeid,  count(salesid) totalorder
from sales_x
group by employeeid
order by totalorder asc
) empsale on 
e.employeeid=empsale.employeeid;

----6
select * from Sales_x

WITH MonthlySalesCTE AS (
    SELECT 
        DATEPART(YEAR, SaleDate) AS SaleYear,
        DATEPART(MONTH, SaleDate) AS SaleMonth,
        SUM(SalesAmount) AS MonthlyTotalSales
    FROM 
        Sales
    GROUP BY 
        DATEPART(YEAR, SaleDate),
        DATEPART(MONTH, SaleDate));


--------7
select * from Sales_x
select * from Products_x

select p.categoryid, p.productname,s.saleperproduct
from Products_x p
join(
select productid, count(salesid) saleperproduct
from Sales_x
group by productid) as s
on p.ProductID=s.ProductID

-----8
with sales_cte as(
select p.productid, p.productname, sum(SalesAmount) totalsales
from Products_x p
join Sales_x on 
p.ProductID=Sales_x.ProductID
where saledate>= dateadd(year,-1, getdate())
group by p.productid, p.productname),

rankproduct as(
select productid, productname, totalsales,
rank() over (order by totalsales desc) rank
from sales_cte)
select rank, productid, productname,totalsales
from rankproduct
order by rank;
------9
select * from Sales_x
select * from Employees_x

select e.employeeid, e.firstname,e.lastname, s.salequarter
from Employees_x e
join (
select employeeid, sum(salesamount) salequarter
from Sales_x
group by EmployeeID, year(saledate)
having sum(salesamount)>5000) s
on e.EmployeeID=s.EmployeeID

-----10
select * from Sales_x
select * from Employees_x

select e.employeeid, e.firstname, e.lastname, s.saleamount
from Employees_x e
join (
select top 3 employeeid, sum(salesamount) saleamount
from Sales_x
where saledate>=dateadd(month,-1,getdate())
group by EmployeeID
order by saleamount) s
on e.EmployeeID=s.EmployeeID

-----difficult task
-------1
with numbercte as(
select 1 as number,
cast(1 as varchar) as sequence_
union all
select number +1,
sequence_ + cast(number as varchar +1 as varchar)
from numbercte
where number<5)
select number, sequence_
from numbercte

----2
select * from Employees_x
select * from Sales_x

select e.employeeid, e.firstname, e.lastname, s.mostsale
from Employees_x e
join (
select employeeid, sum(salesamount) mostsale
from Sales_x
where SaleDate>= dateadd(month,-6,getdate())
group by EmployeeID
) s
on e.EmployeeID=s.EmployeeID
order by s.mostsale desc

-----3
WITH RECURSIVE RunningTotalCTE AS (
    SELECT 
        1 AS Step,
        0 AS RunningTotal 
    UNION ALL
    SELECT 
        Step + 1,
        CASE
            WHEN RunningTotal + Step > 10 THEN RunningTotal 
            WHEN RunningTotal + Step < 0 THEN RunningTotal 
            ELSE RunningTotal + Step 
        END AS RunningTotal
    FROM 
        RunningTotalCTE
    WHERE 
        Step < 10 
)
SELECT 
    Step,
    RunningTotal
FROM 
    RunningTotalCTE;


----4
CREATE TABLE Schedule ( ScheduleID CHAR(1) PRIMARY KEY, StartTime DATETIME NOT NULL, EndTime DATETIME NOT NULL ); 

CREATE TABLE Activity ( ScheduleID CHAR(1) REFERENCES Schedule (ScheduleID), ActivityName VARCHAR(100), StartTime DATETIME, EndTime DATETIME, PRIMARY KEY (ScheduleID, ActivityName, StartTime, EndTime) ); 

INSERT INTO Schedule (ScheduleID, StartTime, EndTime) VALUES ('A',CAST('2021-10-01 10:00:00' AS DATETIME),CAST('2021-10-01 15:00:00' AS DATETIME)), ('B',CAST('2021-10-01 10:15:00' AS DATETIME),CAST('2021-10-01 12:15:00' AS DATETIME));

INSERT INTO Activity (ScheduleID, ActivityName, StartTime, EndTime) VALUES ('A','Meeting',CAST('2021-10-01 10:00:00' AS DATETIME),CAST('2021-10-01 10:30:00' AS DATETIME)), ('A','Break',CAST('2021-10-01 12:00:00' AS DATETIME),CAST('2021-10-01 12:30:00' AS DATETIME)), ('A','Meeting',CAST('2021-10-01 13:00:00' AS DATETIME),CAST('2021-10-01 13:30:00' AS DATETIME)), ('B','Break',CAST('2021-10-01 11:00:00'AS DATETIME),CAST('2021-10-01 11:15:00' AS DATETIME));

select * from Schedule
select * from Activity

SELECT 
    s.EmployeeID,
    s.ShiftDate,
    s.StartTime,
    s.EndTime,
    COALESCE(a.ActivityName, 'Work') AS ActivityLabel
FROM 
    Schedule s
LEFT JOIN 
    Activity a
ON 
    s.EmployeeID = a.EmployeeID 
    AND s.ShiftDate = a.ActivityDate 
    AND s.StartTime <= a.ActivityStartTime 
    AND s.EndTime >= a.ActivityEndTime
ORDER BY 
    s.EmployeeID, s.ShiftDate, s.StartTime;



	-----5
select * from Products_x
select * from Sales_x
select * from Employees_x
select * from Departments_x

select departmentcte as(
select d.departmentid, d.departmentname,p.productid,sum(s.salesamount)
from Departments_x d
join Products_x p on d.DepartmentID=p.departmentid
join Sales_x s on p.ProductID=s.ProductID
group by d.departmentid, d.departmentname,p.productid),

productcte as(
select p.productid, p.productname,d.departmentid
from Products_x p
join Departments_x d on p.departmentid=d.DepartmentID
)
select d.departmentname,p.productname, d.totalsale
from departmentcte d
join productcte p on d.productid=p.productid
order by d.departname