use AdventureWorks2022
---easy task
select * from Production.Product

select min(ListPrice) as min_Price----task 1
from Production.Product

select * from [HumanResources].[EmployeePayHistory]

select max(Rate) as Salary---- task 2
from [HumanResources].[EmployeePayHistory]

select * from [Sales].[Customer]

select count(*) PersonID---task 3
from [Sales].[Customer]

use example_db

select * from dbo.Product

select count(distinct category) Category----task 4
from dbo.Product

use AdventureWorks2022

select * from [Sales].[SalesOrderDetail]

select sum(OrderQty) ----task 5
from [Sales].[SalesOrderDetail]
where ProductID='712'
use example_db
select * from dbo.Employee

alter table Employee
add age varchar(50);
insert into Employee(age)
values(31)
drop table employee

CREATE TABLE [Employee] (
    [EmployeeID] INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
    [EmpName] VARCHAR(50) NULL,
    [EmpJoiningDate] VARCHAR(50),
    [Salary] DECIMAL(10,2),
    );
SELECT * FROM Employee
	select isnull(email,noemail@example.com) as result
	from Employee
	alter table Employee
	add email VARCHAR(50)
	alter table Employee
	add Department VARCHAR(50)
	alter table Employee
	add age int;

	delete Employee
	where='Age'

INSERT INTO Employee(EmpName,EmpJoiningDate,Salary,email, Department, Age)
VALUES('Kieran Wilson','Feb 17, 2020','50000','null','HR','34'),
('Keefe Byrd','May 13, 2020','45000','null','HR','47'),
('Brendan James','Mar 28, 2020','23000','null','Housekeeping','56'),
('Jerry Beard','Jun 7, 2020','14000','null','Housekeeping','19'),
('Fitzgerald Bean','Nov 15, 2018','8000','null','Front office','21'),
('Amir Salinas','Aug 13, 2020','18000','null','Back office','44'),
('Justin Bender','May 3, 2020','19000','null','Security','32'),
('Colorado Cohen','May 22, 2020','35000','null','Security','56'),
('Dolan Stokes','Mar 13, 2019','81004','null','Front office','37'),
('Byron Clements','Apr 27, 2020','39885','null','Executive chef','48'),
('Russell Griffin','Jun 25, 2019','35000','null','Executive chef','22'),
('Brady Carney','May 24, 2020','10800','null','Housekeeping','36'),
('Keefe Klein','Aug 16, 2019','30003','null','Back office','27'),
('Walker Simon','Jan 24, 2019','60000','null','Back office','22'),
('Geoffrey Nunez','Jun 6, 2019','10899','null','Security','41');

select avg(Age)----task 6
from Employee


select count(EmployeeID), Department-----task 7
from Employee
group by Department


CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2),
    Color varchar(50),
	Category varchar(50),
	Region varchar(50)
);
drop table Product
select * from Product

insert into Product(ProductID, ProductName, Price, Color, Category, Region)
VALUES('1','toothpaste','25','black','Hygiena', 'Tashkent'),
      ('2', 'laundry detergent','15','white','cleaning product','Tashkent'),
	  ('3', 'soft drinks','10','yellow', 'Soda','Buxoro'),
	  ('4', 'seatbealt','75','black','safety equipment','Samarkand'),
	  ('5', 'hand bag','100','green','accessories','Samarkand'),
	  ('6', 'lego','120','black','toys','Tashkent'),
	  ('7', 'dyson','142','white','electronics','Buxoro');

select Region, sum(Price) total----task 9
from Product
group by Region

select  
max(Price),
min(Price), Region-----task 8
from Product
group by Region;

SELECT * FROM Employee

select count(EmployeeID), Department---task 10
from Employee
group by Department
having count(EmployeeID)>5