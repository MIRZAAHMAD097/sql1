CREATE TABLE Dates (
    Id INT,
    Dt DATETIME
);
INSERT INTO Dates VALUES
(1,'2018-04-06 11:06:43.020'),
(2,'2017-12-06 11:06:43.020'),
(3,'2016-01-06 11:06:43.020'),
(4,'2015-11-06 11:06:43.020'),
(5,'2014-10-06 11:06:43.020');

-----puzzle 1
select * from Dates

select id, dt, 
RIGHT('0' + CAST(MONTH(Dt) AS VARCHAR(2)), 2) AS Month
from dates
order by id;

------puzzle 2
CREATE TABLE MyTabel (
    Id INT,
    rID INT,
    Vals INT
);
INSERT INTO MyTabel VALUES
(121, 9, 1), (121, 9, 8),
(122, 9, 14), (122, 9, 0), (122, 9, 1),
(123, 9, 1), (123, 9, 2), (123, 9, 10);

select * from MyTabel

select count(distinct id) disticnt_id, rId, sum(maxvals) total
from(
select id, rid, max(vals) maxvals
from MyTabel
group by id, rID) valuesmax
group by rID;

----puzzle 3
CREATE TABLE TestFixLengths (
    Id INT,
    Vals VARCHAR(100)
);
INSERT INTO TestFixLengths VALUES
(1,'11111111'), (2,'123456'), (2,'1234567'), 
(2,'1234567890'), (5,''), (6,NULL), 
(7,'123456789012345');

select * from TestFixLengths

SELECT DISTINCT Id, Vals
FROM TestFixLengths
WHERE Vals IS NOT NULL AND Vals <> ''
AND Id IN (1, 2) 
ORDER BY Id, Vals;

-------puzzle 4
CREATE TABLE TestMaximum (
    ID INT,
    Item VARCHAR(20),
    Vals INT
);
INSERT INTO TestMaximum VALUES
(1, 'a1',15), (1, 'a2',20), (1, 'a3',90),
(2, 'q1',10), (2, 'q2',40), (2, 'q3',60), (2, 'q4',30),
(3, 'q5',20);

select * from TestMaximum;
SELECT Id, Item, Vals
FROM TestMaximum
WHERE Vals = (SELECT MAX(Vals) FROM TestMaximum TM WHERE TM.Id = TestMaximum.Id)
ORDER BY Id;

-----puzzle 5 
CREATE TABLE SumOfMax (
    DetailedNumber INT,
    Vals INT,
    Id INT
);
INSERT INTO SumOfMax VALUES
(1,5,101), (1,4,101), (2,6,101), (2,3,101),
(3,3,102), (4,2,102), (4,3,102);

select * from SumOfMax

select id, sum(maxvals) sumvals
from(
select id, detailednumber, max(vals) maxvals
from SumOfMax
group by id, DetailedNumber) maxvalue
group by id
order by id;

---------puzzle 6
CREATE TABLE TheZeroPuzzle (
    Id INT,
    a INT,
    b INT
);
INSERT INTO TheZeroPuzzle VALUES
(1,10,4), (2,10,10), (3,1, 10000000), (4,15,15);

select * from TheZeroPuzzle

select id, a,b,
case
when a-b=0 then null
else a-b
end as output
from TheZeroPuzzle
order by id;

CREATE TABLE Sales23 (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    Product VARCHAR(50),
    Category VARCHAR(50),
    QuantitySold INT,
    UnitPrice DECIMAL(10,2),
    SaleDate DATE,
    Region VARCHAR(50)
);
INSERT INTO Sales23 (Product, Category, QuantitySold, UnitPrice, SaleDate, Region)
VALUES
('Laptop', 'Electronics', 10, 800.00, '2024-01-01', 'North'),
('Smartphone', 'Electronics', 15, 500.00, '2024-01-02', 'North'),
('Tablet', 'Electronics', 8, 300.00, '2024-01-03', 'East'),
('Headphones', 'Electronics', 25, 100.00, '2024-01-04', 'West'),
('TV', 'Electronics', 5, 1200.00, '2024-01-05', 'South'),
('Refrigerator', 'Appliances', 3, 1500.00, '2024-01-06', 'South'),
('Microwave', 'Appliances', 7, 200.00, '2024-01-07', 'East'),
('Washing Machine', 'Appliances', 4, 1000.00, '2024-01-08', 'North'),
('Oven', 'Appliances', 6, 700.00, '2024-01-09', 'West'),
('Smartwatch', 'Electronics', 12, 250.00, '2024-01-10', 'East'),
('Vacuum Cleaner', 'Appliances', 5, 400.00, '2024-01-11', 'South'),
('Gaming Console', 'Electronics', 9, 450.00, '2024-01-12', 'North'),
('Monitor', 'Electronics', 14, 300.00, '2024-01-13', 'West'),
('Keyboard', 'Electronics', 20, 50.00, '2024-01-14', 'South'),
('Mouse', 'Electronics', 30, 25.00, '2024-01-15', 'East'),
('Blender', 'Appliances', 10, 150.00, '2024-01-16', 'North'),
('Fan', 'Appliances', 12, 75.00, '2024-01-17', 'South'),
('Heater', 'Appliances', 8, 120.00, '2024-01-18', 'East'),
('Air Conditioner', 'Appliances', 2, 2000.00, '2024-01-19', 'West'),
('Camera', 'Electronics', 7, 900.00, '2024-01-20', 'North');


select * from Sales23;

------------7
select product, sum(unitprice*QuantitySold) totalrevenue
from sales23
group by product;

---------8
select product, avg(unitprice) avgprice
from sales23
group by Product;

------9
select count(saleid) transactions
from sales23;

------10
select quantitysold 
from sales23
where QuantitySold=(select max(quantitysold) from sales23);

------11
select category, sum(quantitysold) totalsale
from sales23
group by Category
order by totalsale;

-------12
select region, sum(quantitysold*unitprice) totalrevenue
from sales23
group by region;

-----13
SELECT 
    FORMAT(SaleDate, 'yyyy-MM') AS Month, 
    SUM(QuantitySold) AS TotalQuantitySold
FROM Sales23
GROUP BY FORMAT(SaleDate, 'yyyy-MM')
ORDER BY Month;

-------14
select top 1 product, sum(quantitysold*unitprice) totalrevenue
from sales23
group by product
order by totalrevenue;

-----15
SELECT SaleDate, Product, Category, QuantitySold, UnitPrice, 
       SUM(QuantitySold * UnitPrice) OVER (ORDER BY SaleDate) AS RunningTotalRevenue
FROM Sales23
ORDER BY SaleDate;

---------16
SELECT Category, SUM(QuantitySold * UnitPrice) AS CategoryRevenue
FROM Sales23
WHERE Category = (SELECT TOP 1 Category FROM Sales ORDER BY Category)
GROUP BY Category;

-------17
CREATE TABLE Customers23 (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    JoinDate DATE
);
INSERT INTO Customers23 (CustomerName, Region, JoinDate)
VALUES
('John Doe', 'North', '2022-03-01'),
('Jane Smith', 'West', '2023-06-15'),
('Emily Davis', 'East', '2021-11-20'),
('Michael Brown', 'South', '2023-01-10'),
('Sarah Wilson', 'North', '2022-07-25'),
('David Martinez', 'East', '2023-04-30'),
('Laura Johnson', 'West', '2022-09-14'),
('Kevin Anderson', 'South', '2021-12-05'),
('Sophia Moore', 'North', '2023-02-17'),
('Daniel Garcia', 'East', '2022-08-22');

select * from Customers23
select * from Sales23

SELECT s.SaleID, s.Product, s.Category, s.QuantitySold, s.UnitPrice, s.SaleDate, s.Region, c.CustomerName
FROM Sales23 s
JOIN Customers23 c ON s.Region = c.Region
ORDER BY s.SaleDate;

----------18
select customername, region , joindate
from Customers23 c
where not exists(
select 1 from sales23 s
where s.Region=c.Region);

---------19
select c.customerid, c.customername,
sum(s.quantitysold*s.unitprice) totalsale
from Customers23 c
join Sales23 s on
c.Region=s.Region
group by c.customerid, c.customername
order by totalsale;

----------20
select top 1 c.customerid, c.customername,c.region,
sum(s.quantitysold*s.unitprice) totalsale
from Customers23 c
join Sales23 s on
c.Region=s.Region
group by  c.customerid, c.customername,c.region
order by totalsale desc;

---------21
SELECT 
    c.CustomerID, 
    c.CustomerName, 
    FORMAT(s.SaleDate, 'yyyy-MM') AS Month, 
    SUM(s.QuantitySold * s.UnitPrice) AS EstimatedTotalSales
FROM Customers23 c
JOIN Sales23 s ON c.Region = s.Region
GROUP BY c.CustomerID, c.CustomerName, FORMAT(s.SaleDate, 'yyyy-MM')
ORDER BY Month, EstimatedTotalSales DESC;

CREATE TABLE Products23 (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    CostPrice DECIMAL(10,2),
    SellingPrice DECIMAL(10,2)
);
INSERT INTO Products23 (ProductName, Category, CostPrice, SellingPrice)
VALUES
('Laptop', 'Electronics', 600.00, 800.00),
('Smartphone', 'Electronics', 350.00, 500.00),
('Tablet', 'Electronics', 200.00, 300.00),
('Headphones', 'Electronics', 50.00, 100.00),
('TV', 'Electronics', 900.00, 1200.00),
('Refrigerator', 'Appliances', 1100.00, 1500.00),
('Microwave', 'Appliances', 120.00, 200.00),
('Washing Machine', 'Appliances', 700.00, 1000.00),
('Oven', 'Appliances', 500.00, 700.00),
('Gaming Console', 'Electronics', 320.00, 450.00);

----------22
select * from Products23

select distinct p.productname, p.category
from Products23 p
join sales23 s on
p.Category=s.Category
where s.QuantitySold>0
order by ProductName;

-------23
select top 1 productname, max(sellingprice) maxprice
from Products23
group by ProductName
order by maxprice desc;

-----24
SELECT s.SaleID, s.Product, s.Category, s.QuantitySold, s.UnitPrice, 
       p.CostPrice, (s.QuantitySold * p.CostPrice) AS TotalCost
FROM Sales23 s
JOIN Products23 p ON s.Product = p.ProductName
ORDER BY s.SaleID;

--------25
SELECT ProductName, Category, SellingPrice
FROM Products23 p
WHERE SellingPrice > (
    SELECT AVG(SellingPrice) 
    FROM Products23 
    WHERE Category = p.Category
);










