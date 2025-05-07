select * from Orders
select * from Employees_2
select * from Employees
select * from Employees_x
select * from Products
select * from Products_x

CREATE TABLE staff (
    staffID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO staff (staffID, DepartmentID, FirstName, LastName, Salary) VALUES
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

CREATE TABLE Client (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100),
    City VARCHAR(50)
);

INSERT INTO Client (ClientID, ClientName, City) VALUES
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

CREATE TABLE item (
    itemID INT PRIMARY KEY,
    itemName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO item (itemID, itemName, Price) VALUES
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
(19, 'RAM', 100.00),
(20, 'SSD', 250.00),
(21, 'Motherboard', 150.00),
(22, 'Camera Lens', 600.00),
(23, 'Projector', 350.00),
(24, 'Bluetooth Speaker', 60.00),
(25, 'Wired Headset', 40.00),
(26, 'Portable Speaker', 55.00),
(27, 'Microphone', 90.00),
(28, 'Webcam', 50.00),
(29, 'Smart Light Bulb', 30.00),
(30, 'Action Camera', 450.00),
(31, 'USB Cable', 5.00),
(32, 'Gaming Mouse', 60.00),
(33, 'Gaming Chair', 150.00),
(34, 'Game Console', 350.00),
(35, 'Virtual Reality Headset', 500.00),
(36, 'Electric Scooter', 800.00),
(37, 'Bluetooth Earbuds', 100.00),
(38, 'Electric Toothbrush', 40.00),
(39, 'Juicer', 90.00),
(40, 'Coffee Maker', 120.00);

CREATE TABLE purchase_sx (
    purchaseID INT PRIMARY KEY,
    purchaseAmount DECIMAL(10, 2),
    itemID INT,
	staffid int,
	clientid int,
	status_ varchar(100),
    purchaseDate DATE
);

INSERT INTO purchase_sx (purchaseID, purchaseAmount, itemID,staffid,clientid,status_, purchaseDate) VALUES
(1, 150.00, 1,1, 1,'complate','2025-01-01'),
(2, 200.00, 2, 2,2,'complate','2025-01-02'),
(3, 120.00, 3, 3,3,'complate','2025-01-03'),
(4, 180.00, 4, 4,4,'complate','2025-01-04'),
(5, 220.00, 5, 5,5,'complate','2025-01-05'),
(6, 140.00, 6, 6,6,'complate','2025-01-06'),
(7, 250.00, 1, 7,7,'complate','2025-01-07'),
(8, 170.00, 2, 8,8,'complate','2025-01-08'),
(9, 160.00, 3, 9,9,'complate','2025-01-09'),
(10, 190.00, 4,10,10,'complate', '2025-01-10'),
(11, 210.00, 5, 11,11,'complate','2025-01-11'),
(12, 130.00, 6, 12,12,'complate','2025-01-12'),
(13, 200.00, 1, 13,13,'complate','2025-01-13'),
(14, 180.00, 2, 14,14,'complate','2025-01-14'),
(15, 150.00, 3, 15,15,'complate','2025-01-15'),
(16, 220.00, 4, 16,16,'complate','2025-01-16'),
(17, 170.00, 5, 17,17,'complate','2025-01-17'),
(18, 160.00, 6, 18,18,'in progress','2025-01-18'),
(19, 250.00, 1, 19,19,'in progress','2025-01-19'),
(20, 180.00, 2, 20,20,'in progress','2025-01-20'),
(21, 140.00, 3, 21,21,'in progress','2025-01-21'),
(22, 190.00, 4, 22,22,'in progress','2025-01-22'),
(23, 210.00, 5, 23,23,'in progress','2025-01-23'),
(24, 160.00, 6, 24,24,'in progress','2025-01-24'),
(25, 150.00, 1, 25,25,'in progress','2025-01-25'),
(26, 200.00, 2, 26,26,'in progress','2025-01-26'),
(27, 220.00, 3, 27,27,'in progress','2025-01-27'),
(28, 130.00, 4, 28,28,'in progress','2025-01-28'),
(29, 250.00, 5, 29,29,'complate','2025-01-29'),
(30, 180.00, 6, 30,30,'complate','2025-01-30'),
(31, 210.00, 1, 31,31,'complate','2025-02-01'),
(32, 170.00, 2, 32,32,'complate','2025-02-02'),
(33, 160.00, 3, 33,33,'complate','2025-02-03'),
(34, 190.00, 4, 34,34,'complate','2025-02-04'),
(35, 200.00, 5, 35,35,'complate','2025-02-05'),
(36, 220.00, 6, 36,36,'complate','2025-02-06'),
(37, 130.00, 1, 37,37,'complate','2025-02-07'),
(38, 250.00, 2, 38,38,'complate','2025-02-08'),
(39, 140.00, 3, 39,39,'complate','2025-02-09'),
(40, 180.00, 4, 40,40,'complate','2025-02-10');

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2)
);

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 101, 2, 50.00),
(2, 1, 102, 1, 100.00),
(3, 2, 103, 3, 150.00),
(4, 2, 104, 2, 150.00),
(5, 3, 105, 1, 120.00),
(6, 3, 106, 1, 100.00),
(7, 4, 107, 5, 50.00),
(8, 4, 108, 3, 60.00),
(9, 5, 109, 6, 75.00),
(10, 5, 110, 4, 125.00),
(11, 6, 101, 1, 50.00),
(12, 6, 102, 2, 100.00),
(13, 7, 103, 4, 75.00),
(14, 7, 104, 2, 150.00),
(15, 8, 105, 3, 80.00),
(16, 8, 106, 1, 100.00),
(17, 9, 107, 1, 200.00),
(18, 9, 108, 2, 50.00),
(19, 10, 109, 4, 150.00),
(20, 10, 110, 2, 125.00),
(21, 11, 101, 3, 50.00),
(22, 11, 102, 2, 100.00),
(23, 12, 103, 1, 150.00),
(24, 12, 104, 3, 150.00),
(25, 13, 105, 2, 120.00),
(26, 13, 106, 1, 100.00),
(27, 14, 107, 5, 50.00),
(28, 14, 108, 2, 60.00),
(29, 15, 109, 6, 75.00),
(30, 15, 110, 3, 125.00),
(31, 16, 101, 4, 50.00),
(32, 16, 102, 2, 100.00),
(33, 17, 103, 3, 150.00),
(34, 17, 104, 1, 150.00),
(35, 18, 105, 2, 120.00),
(36, 18, 106, 1, 100.00),
(37, 19, 107, 2, 200.00),
(38, 19, 108, 3, 50.00),
(39, 20, 109, 5, 75.00),
(40, 20, 110, 2, 125.00);

-------easy tasks
---------1
go
create view vwstaff as
select employeeid, firstname, lastname
from Employees_2;

select * from vwstaff
select * from item
----------2
go
create view vwitemprices as
select itemname, price
from item;
select * from vwitemprices;

-------3
CREATE TABLE #TempPurchases (
    PurchaseID INT,
    CustomerName NVARCHAR(100),
    PurchaseDate DATE,
    Amount DECIMAL(10, 2)
);


INSERT INTO #TempPurchases (PurchaseID, CustomerName, PurchaseDate, Amount)
VALUES
    (1, 'Alice', '2023-01-10', 125.50),
    (2, 'Bob', '2023-01-15', 250.75),
    (3, 'Charlie', '2023-01-20', 300.00),
    (4, 'Diana', '2023-01-25', 175.25);

------4
select * from purchase

declare @currentrevenue decimal(10,2);
select @currentrevenue=sum(purchaseamount)
from purchase
where month(purchasedate)=month(getdate())
and year(purchasedate)=year(getdate());

select @currentrevenue 

---------5
go
create function dbo.fnsquare(@inputnumber float)
returns float
as 
begin 
return @inputnumber*@inputnumber
end;

select dbo.fnsquare(5)

----------6
select * from Client
create procedure spgetclients @clientname varchar(100)
as
select clientname
from Client
where ClientName=@clientname
go
exec spgetclients @clientname='Frank Miller'

--------7
select * from purchase
select * from Client

MERGE INTO Purchases AS Target
USING Clients AS Source
ON Target.ClientID = Source.ClientID
WHEN MATCHED THEN
    UPDATE SET 
        Target.PurchaseAmount = Target.PurchaseAmount + Source.LastPurchaseAmount,
        Target.LastPurchaseDate = Source.LastPurchaseDate
WHEN NOT MATCHED THEN
    INSERT (ClientID, PurchaseAmount, LastPurchaseDate)
    VALUES (Source.ClientID, Source.LastPurchaseAmount, Source.LastPurchaseDate);

-----------8
CREATE TABLE #StaffInfo (
    StaffID INT PRIMARY KEY,
    StaffName NVARCHAR(100),
    Position NVARCHAR(50),
    Department NVARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

INSERT INTO #StaffInfo (StaffID, StaffName, Position, Department, HireDate, Salary)
VALUES 
    (1, 'Alice Johnson', 'Manager', 'Sales', '2020-05-15', 75000.00),
    (2, 'Bob Smith', 'Assistant', 'HR', '2019-03-01', 45000.00),
    (3, 'Charlie Brown', 'Developer', 'IT', '2021-07-20', 62000.00),
    (4, 'Diana Prince', 'Team Lead', 'Marketing', '2018-11-30', 80000.00);

-----9
go
create function even_or_odd(@inputnumber int)
returns varchar(50)
as 
begin
return case
when @inputnumber /2=0 then 'even'
else 'odd'
end;
end;

select dbo.even_or_odd(4)
select dbo.even_or_odd(13)

---------10
select * from purchase
go
create procedure spmonthlyrevenue @month int, @year int
as
begin
select sum(purchaseamount) as total
from purchase
where month(purchaseDate)=@month and
year(purchasedate)=@year
end;
go
exec spmonthlyrevenue @month=2, @year=2025

----------11
select * from purchase
go
create view vwrecent_item_sales_ as
select itemid, sum(purchaseamount) totalsaleformonth
from purchase
where purchaseDate>=dateadd(month,-1,2025-02-01)
and purchaseDate<getdate()
group by itemid;
select * from vwrecent_item_sales_

-----12
declare @currentdate date;
set @currentdate=getdate()

print'the current date'+cast(@currentdate as nvarchar(100))

---------13
select * from item

create view vwHighQuantityItems as
select itemname,price
from item 
where quantity>100
select * from vwHighQuantityItems

----------14
CREATE TABLE #ClientOrders (
    OrderID INT PRIMARY KEY,
    ClientID INT,
    OrderDate DATE,
    OrderAmount DECIMAL(10, 2)
);


INSERT INTO #ClientOrders (OrderID, ClientID, OrderDate, OrderAmount)
VALUES
    (1, 1, '2023-01-10', 250.50),
    (2, 2, '2023-01-15', 400.75),
    (3, 3, '2023-01-20', 300.00),
    (4, 4, '2023-01-25', 500.25),
	 (5, 5, '2023-02-01', 150.00),
    (6, 6, '2023-02-05', 200.00),
    (7, 7, '2023-02-10', 175.00),
    (8, 8, '2023-02-15', 250.00),
    (9, 9, '2023-02-20', 300.00),
    (10, 10, '2023-02-25', 225.00),
    (11, 11, '2023-03-01', 350.00),
    (12, 12, '2023-03-05', 400.00),
    (13, 13, '2023-03-10', 450.00),
    (14, 14, '2023-03-15', 500.00),
    (15, 15, '2023-03-20', 325.00),
    (16, 16, '2023-03-25', 275.00),
    (17, 17, '2023-04-01', 150.00),
    (18, 18, '2023-04-05', 375.00),
    (19, 19, '2023-04-10', 200.00),
    (20, 20, '2023-04-15', 300.00),
    (21, 21, '2023-04-20', 400.00),
    (22, 22, '2023-04-25', 450.00),
    (23, 23, '2023-05-01', 500.00),
    (24, 24, '2023-05-05', 600.00),
    (25, 25, '2023-05-10', 700.00),
    (26, 26, '2023-05-15', 350.00),
    (27, 27, '2023-05-20', 275.00),
    (28, 28, '2023-05-25', 400.00),
    (29, 29, '2023-06-01', 450.00),
    (30, 30, '2023-06-05', 300.00),
    (31, 31, '2023-06-10', 200.00),
    (32, 32, '2023-06-15', 150.00),
    (33, 33, '2023-06-20', 600.00),
    (34, 34, '2023-06-25', 750.00),
    (35, 35, '2023-07-01', 500.00),
    (36, 36, '2023-07-05', 800.00),
	(37, 37, '2023-07-10', 450.00),
    (38, 38, '2023-07-15', 520.00),
    (39, 39, '2023-07-20', 300.00),
    (40, 40, '2023-07-25', 750.00);

select * from purchase
select * from #ClientOrders
select p.purchaseid,c.clientid,p.purchaseAmount,p.purchaseDate
from purchase p
join #ClientOrders c on
p.clientID=c.ClientID
-----------15
select * from staff
select * from Departments


go
create procedure sp_staffdetails @staffid int
as
begin
select concat(firstname,' ',lastname), departmentid
from staff
where staffid=@staffid
end;

exec sp_staffdetails @staffid=30

-------16
go
create function dbo.fnaddnumbers(@number1 float,@number2 float)
returns float
as 
begin
return @number1+@number2;
end;

select dbo.fnaddnumbers(25,38)

-----------17
MERGE INTO Items AS Target
USING #NewItemPrices AS Source
ON Target.ItemID = Source.ItemID
WHEN MATCHED THEN
    UPDATE SET 
        Target.Price = Source.Price,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (ItemID, ItemName, Price, LastUpdated)
    VALUES (Source.ItemID, Source.ItemName, Source.Price, GETDATE());

-------18
select * from staff
go
create view vwstaffsalaries as
select firstname, lastname,salary
from staff

select * from vwstaffsalaries
----------19

select * from purchase
select * from #ClientOrders

go
create procedure spclientpurchases @clientid int
as 
begin
select purchaseid, clientid, purchasedate
from purchase
where ClientID=@clientid;
end;
EXEC spClientPurchases @ClientID = 13;

---------20
go
create function fnstringlenght (@inputstring varchar(max))
returns int
as 
begin
return len(@inputstring)
end;
select dbo.fnstringlenght('Barcelona team of lousers');

-------medium tasks
--------1
select * from purchase_1
select * from Client
go
create view vwclientorderhistory as
select p.clientid, c.clientname,p.purchaseid,p.purchasedate
from purchase_1 p
join Client c
on p.clientid=c.ClientID

select * from vwclientorderhistory

---------2
CREATE TABLE #YearlyItemSales (
    ItemID INT,
    ItemName NVARCHAR(100),
    SaleDate DATE,
    SalesAmount DECIMAL(10, 2))

INSERT INTO #YearlyItemSales (ItemID, ItemName, SaleDate, SalesAmount)
VALUES 
    (1, 'laptop', '2023-01-01', 150.00),
    (2, 'pen', '2023-01-02', 200.00),
    (3, 'pencil', '2023-01-03', 175.50),
    (4, 'notebook', '2023-01-04', 250.75),
    (5, 'book', '2023-01-05', 300.00),
    (6, 'bag', '2023-01-06', 320.25),
    (7, 'ball', '2023-01-07', 400.50),
    (8, 'toys', '2023-01-08', 450.75),
    (9, 't-shirt', '2023-01-09', 500.00),
    (10, 'shirt', '2023-01-10', 600.00);


select * from #YearlyItemSales
select itemname,saledate,salesamount
from #YearlyItemSales
where year(saledate)=year(getdate())
group by itemname,saledate,salesamount

---------3
select * from purchase_sp
go
create procedure spupdatepurchasestatus @purchaseid int,
@status varchar(50)
as
begin 
update purchase_sp
set status_=@status,
purchaseDate=getdate()
where purchaseid=@purchaseid;
end;
exec spupdatepurchasestatus @purchaseid=18, @status='complete';

------4
MERGE INTO Purchases AS Target
USING (VALUES 
    (101, '2023-04-01', 500.00),
    (102, '2023-04-02', 300.00),
    (103, '2023-04-03', 450.00)
) AS Source (PurchaseID, PurchaseDate, PurchaseAmount)
ON Target.PurchaseID = Source.PurchaseID
WHEN MATCHED THEN
    UPDATE SET 
        Target.PurchaseDate = Source.PurchaseDate,
        Target.PurchaseAmount = Source.PurchaseAmount
WHEN NOT MATCHED THEN
    INSERT (PurchaseID, PurchaseDate, PurchaseAmount)
    VALUES (Source.PurchaseID, Source.PurchaseDate, Source.PurchaseAmount);

-------5
select * from item
declare @avgitemsale decimal(10,2);
set @avgitemsale=(
select avg(price)
from item
where itemid=5)

---------6

select * from purchase_sp
select * from item
go
create view vwItemOrderDetails as
select p.purchaseid, i.itemname,p.purchaseamount
from purchase_sp p
join item i on 
p.itemID=i.itemID

select * from vwItemOrderDetails

----------7
create function  dbo.fnCalcDiscount (@orders decimal(10,2),
@percentage decimal(10,2))
returns decimal(10,2)
as 
begin
return (@orders*@percentage)/100
end;
select dbo.fnCalcDiscount(250.00,25.00);

---------8
select * from purchase_sp
go
create procedure spDeleteOldPurchases @date date
as
begin
delete from purchase_sp
where purchaseDate<@date
end;
execute spDeleteOldPurchases @date='2025-01-06'

----------9
MERGE INTO Staff AS Target
USING #SalaryUpdates AS Source
ON Target.StaffID = Source.StaffID
WHEN MATCHED THEN
    UPDATE SET 
        Target.Salary = Source.NewSalary,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (StaffID, StaffName, Salary, LastUpdated)
    VALUES (Source.StaffID, Source.StaffName, Source.NewSalary, GETDATE());


-------10
select * from staff
select * from purchase_sx
go
create view vwStaffRevenue as
select s.staffid,s.firstname, s.lastname,sum(p.purchaseamount) totalrevenue
from staff s
join purchase_sp p on
s.staffID=p.staffid
group by s.staffid,s.firstname, s.lastname

select * from vwStaffRevenue

---------11
go
create function fnWeekdayName (@inputdate date)
returns varchar(50)
as 
begin
return datename(weekday,@inputdate);
end;

select dbo.fnWeekdayName('2014-03-21')
select dbo.fnWeekdayName(getdate())


---------12
CREATE TABLE #TempStaff (
    StaffID INT,
    StaffName NVARCHAR(100),
    Department NVARCHAR(100),
    Salary DECIMAL(10, 2),
    LastUpdated DATE
);


INSERT INTO #TempStaff (StaffID, StaffName, Department, Salary, LastUpdated)
SELECT 
    StaffID,
    StaffName,
    Department,
    Salary,
    LastUpdated
FROM 
    Staff;

--------13

declare @totalpurchase int;
set @totalpurchase=(
select count(purchaseid)
from purchase_sx
where clientid=10)

PRINT 'Total number of purchases made by the client: ' + cast(@TotalPurchases as varchar);

--------14
select * from purchase_sx
select * from Client
go
create procedure spClientDetails @clientid int
as 
begin
select p.purchaseid,p.purchaseamount, c.clientname
from purchase_sx p
join Client c on p.clientid=c.ClientID
where p.clientid=@clientid;
end

exec spClientDetails  @clientid=20

-------15
MERGE INTO Items AS Target
USING Delivery AS Source
ON Target.ItemID = Source.ItemID
WHEN MATCHED THEN
    UPDATE SET 
        Target.StockQuantity = Target.StockQuantity + Source.QuantityDelivered,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (ItemID, ItemName, StockQuantity, LastUpdated)
    VALUES (Source.ItemID, Source.ItemName, Source.QuantityDelivered, GETDATE());

------16
go
create procedure spMultiply @number1 decimal(10,2),@number2 decimal(10,2), @result decimal(10,2) output
as
begin
set @result= @number1*@number2;
PRINT 'The product of the two numbers is: ' + CAST(@Result AS NVARCHAR(20));
END;
GO

--------17
go
create function fncalctax(@purchaseamount decimal(10,2),
@tax decimal(10,2))
returns decimal(10,2)
as
begin 
return (@purchaseamount*@tax)/100;
end;

select dbo.fncalctax(750.00,125.00)

-------18
select * from staff
select * from purchase_sx
go
create or alter view vwTopPerformingStaff as
select top 5 p.purchaseamount, s.staffid, s.firstname, s.lastname
from staff s
join purchase_sx p
on s.staffID=p.staffid
order by p.purchaseamount desc

select * from vwTopPerformingStaff

create view vwTopPerformingStaff2 as
select s.staffid, s.firstname, s.lastname, count(p.purchaseid) totalorder
from staff s
join purchase_sx p on
s.staffID=p.staffid
group by s.staffid, s.firstname, s.lastname
order by count(p.purchaseid) desc

select * from vwTopPerformingStaff2

----------19
MERGE INTO Clients AS Target
USING #ClientDataTemp AS Source
ON Target.ClientID = Source.ClientID
WHEN MATCHED THEN
    UPDATE SET 
        Target.ClientName = Source.ClientName,
        Target.Email = Source.Email,
        Target.Phone = Source.Phone,
        Target.Address = Source.Address,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (ClientID, ClientName, Email, Phone, Address, LastUpdated)
    VALUES (Source.ClientID, Source.ClientName, Source.Email, Source.Phone, Source.Address, GETDATE());

---------20
select * from purchase_sx
go
create procedure spTopItems @itemid int
as
begin
select top 5 itemid, sum(quantity)
from purchase_sx
group by itemid;
end;
exec spTopItems; 

--------20
-------1

select * from purchase_sx
select * from staff
go
create or alter procedure sptopsalesstaff @year int, @staffid int
as
begin
select top 1 s.staffid, s.firstname, s.lastname, sum(p.purchaseamount) totalrevenue
from staff s
join purchase_sx p on
s.staffID=p.staffid
where year(p.purchasedate)=@year  and
p.staffid=@staffid
group by s.staffid, s.firstname, s.lastname
order by totalrevenue;
end;

exec sptopsalesstaff @year=2025, @staffid=5

----------2
select * from Client
select * from purchase_sx
go
create view vwClientOrderStats as
select p.itemid, count(p.clientid)totalcountclient, sum(p.purchaseamount) totalpurchase,c.clientname
from purchase_sx p
join Client c on
p.clientid=c.ClientID
group by p.itemid, c.ClientName

select * from vwClientOrderStats

--------------3
MERGE INTO Items AS Target
USING (
    SELECT 
        PurchaseID,
        ItemID,
        QuantitySold
    FROM Purchases
) AS Source
ON Target.ItemID = Source.ItemID
WHEN MATCHED THEN
    UPDATE SET 
        Target.StockQuantity = Target.StockQuantity - Source.QuantitySold,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (ItemID, ItemName, StockQuantity, LastUpdated)
    VALUES (
        Source.ItemID, 
        (SELECT ItemName FROM Purchases WHERE PurchaseID = Source.PurchaseID), -- ItemName derived from Purchases
        -Source.QuantitySold, -- StockQuantity as negative if new item
        GETDATE()
    );
--------4
go
create function fnMonthlyRevenue (@year int, @month int)
returns decimal(10,2)
as
begin
return (select sum(purchaseamount)
from purchase_sx
where year(purchasedate)=@year and
month(purchasedate)=@month);
end;
go
select dbo.fnMonthlyRevenue(2025,2)

--------5
select * from OrderDetails

create procedure spProcessOrderTotals
@orderid int, @tax decimal(10,2), @discount decimal(10,2),
@status varchar(100)
as
begin
declare @subtotal decimal(10,2);
declare @totaltax decimal(10,2);
declare @totaldiscount decimal(10,2);
declare @ordertotal decimal(10,2);

select @subtotal=sum(unitprice*quantity)
from OrderDetails
where OrderID=@orderid

set @totaltax=(@subtotal*@tax)/100;
set @totaldiscount=(@subtotal/@discount)/100;

set @ordertotal=@subtotal+@totaltax-@totaldiscount
update OrderDetails
set totalamount=@ordertotal,
orderstatus=@status,
lastupdate=getdate()
where OrderID=@orderid

------------6

CREATE TABLE #StaffSalesData (
    StaffID INT,
    StaffName NVARCHAR(100),
    TotalSales DECIMAL(10, 2)
);


INSERT INTO #StaffSalesData (StaffID, StaffName, TotalSales)
SELECT 
    s.StaffID,
    s.StaffName,
    SUM(sales.RevenueAmount) AS TotalSales
FROM 
    Staff s
JOIN 
    Sales sales ON s.StaffID = sales.StaffID

	--------7
	MERGE INTO Sales AS Target
USING #SalesTemp AS Source
ON Target.SaleID = Source.SaleID
WHEN MATCHED THEN
    UPDATE SET 
        Target.SaleDate = Source.SaleDate,
        Target.RevenueAmount = Source.RevenueAmount,
        Target.ItemID = Source.ItemID,
        Target.StaffID = Source.StaffID
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
WHEN NOT MATCHED THEN
    INSERT (SaleID, SaleDate, RevenueAmount, ItemID, StaffID)
    VALUES (Source.SaleID, Source.SaleDate, Source.RevenueAmount, Source.ItemID, Source.StaffID);

GROUP BY 
    s.StaffID, s.StaffName;

----------8
select * from purchase_sx
go
create procedure spOrdersByDateRange @startdate date, @enddate date
as
begin
select purchaseid, clientid, itemid
from purchase_sx
where purchaseDate between @startdate and @enddate
order by purchasedate
end;

exec spOrdersByDateRange @startdate='2025-01-01',
@enddate='2025-02-28';

-------9
go
create function fnCompoundInterest(
@principal decimal(10,2),
@rate decimal(10,2),
@time int,
@frequency int)
returns decimal(10,2)
as
begin
return @principal*power(1+(@rate/@frequency/100),
@frequency*@time);
end;
go
SELECT dbo.fnCompoundInterest(1000.00, 5.00, 10, 12) AS FinalAmount;

-------10
select * from Sales_x
select * from Employees_x

create view vwQuotaExceeders as
select s.employeeid, e.firstname, e.lastname, sum(s.salesamount) totalsale
from Sales_x s
join Employees_x e on
s.employeeid=e.EmployeeID
group by s.employeeid, e.firstname, e.lastname
---------11
select * from vwQuotaExceeders
CREATE PROCEDURE spSyncProductStock
    @ProductID INT,                 -- Input: Product ID to sync
    @NewStockQuantity INT           -- Input: New stock quantity
AS
BEGIN
    -- Check if the product exists in StockLevels
    IF EXISTS (
        SELECT 1 
        FROM StockLevels 
        WHERE ProductID = @ProductID
    )
    BEGIN
        -- Update existing stock quantity
        UPDATE StockLevels
        SET StockQuantity = @NewStockQuantity,
            LastUpdated = GETDATE()
        WHERE ProductID = @ProductID;

        PRINT 'Stock level updated successfully.';
    END
    ELSE
    BEGIN
        -- Insert new product stock record
        INSERT INTO StockLevels (ProductID, StockQuantity, LastUpdated)
        VALUES (@ProductID, @NewStockQuantity, GETDATE());

        PRINT 'New stock record inserted successfully.';
    END

    -- Optionally update related product details (if necessary)
    UPDATE Products
    SET LastUpdated = GETDATE()
    WHERE ProductID = @ProductID;

    PRINT 'Product details updated successfully.';
END;
GO

---------12
MERGE INTO Staff AS Target
USING #StaffTemp AS Source
ON Target.StaffID = Source.StaffID
WHEN MATCHED THEN
    UPDATE SET 
        Target.StaffName = Source.StaffName,
        Target.Email = Source.Email,
        Target.Phone = Source.Phone,
        Target.Address = Source.Address,
        Target.Department = Source.Department,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (StaffID, StaffName, Email, Phone, Address, Department, LastUpdated)
    VALUES (Source.StaffID, Source.StaffName, Source.Email, Source.Phone, Source.Address, Source.Department, GETDATE());

--------13
create function fnDateDiffDays (@startdate date,@enddate date)
returns int
as
begin
return datediff(day,@startdate,@enddate);
end;
SELECT dbo.fnDateDiffDays('2025-04-01', '2025-04-18') AS DaysDifference;


----------14
select * from Sales_x
create procedure spUpdateItemPrices
@incrate decimal(10,2),
@disrate decimal(10,2),
@threshold int
as
 begin
 update item
 set price*(1+@incrate/100)
 where itemid in(
 select itemid
  FROM Sales
        GROUP BY ItemID
        HAVING SUM(QuantitySold) > @Threshold
    );

   
    UPDATE Items
    SET Price = Price * (1 - @DecreaseRate / 100)
    WHERE ItemID IN (
        SELECT ItemID
        FROM Sales
        GROUP BY ItemID
        HAVING SUM(QuantitySold) <= @Threshold
    );


    SELECT ItemID, ItemName, Price AS UpdatedPrice
    FROM Items;

    PRINT 'Prices updated successfully.';
END;
GO

--------15
MERGE INTO Clients AS Target
USING #ClientDataTemp AS Source
ON Target.ClientID = Source.ClientID
WHEN MATCHED THEN
    UPDATE SET 
        Target.ClientName = Source.ClientName,
        Target.Email = Source.Email,
        Target.Phone = Source.Phone,
        Target.Address = Source.Address,
        Target.LastUpdated = GETDATE()
WHEN NOT MATCHED THEN
    INSERT (ClientID, ClientName, Email, Phone, Address, LastUpdated)
    VALUES (Source.ClientID, Source.ClientName, Source.Email, Source.Phone, Source.Address, GETDATE());

-----16
CREATE PROCEDURE spRegionalSalesReport
AS
BEGIN
    -- Step 1: Generate a summary report of total revenue per region
    SELECT 
        r.RegionName AS Region,
        SUM(s.RevenueAmount) AS TotalRevenue,
        AVG(s.RevenueAmount) AS AverageSales,
        COUNT(DISTINCT s.StaffID) AS StaffCount
    FROM 
        Regions r
    JOIN 
        Staff st ON r.RegionID = st.RegionID
    JOIN 
        Sales s ON st.StaffID = s.StaffID
    GROUP BY 
        r.RegionName
    ORDER BY 
        TotalRevenue DESC; -- Sort regions by total revenue in descending order
END;
GO

-------17
go
create function fnProfitMargin (@sellprice decimal(10,2),
@costprice decimal(10,2))
returns decimal(10,2)
as
begin
return((@sellprice-@costprice)/@sellprice)*100;
end;
go
