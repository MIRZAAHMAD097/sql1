CREATE TABLE Sales_20 ( SaleID INT PRIMARY KEY IDENTITY(1,1), CustomerName VARCHAR(100), Product VARCHAR(100), Quantity INT, Price DECIMAL(10,2), SaleDate DATE );

INSERT INTO Sales_20 (CustomerName, Product, Quantity, Price, SaleDate) VALUES ('Alice', 'Laptop', 1, 1200.00, '2024-01-15'), ('Bob', 'Smartphone', 2, 800.00, '2024-02-10'), ('Charlie', 'Tablet', 1, 500.00, '2024-02-20'), ('David', 'Laptop', 1, 1300.00, '2024-03-05'), ('Eve', 'Smartphone', 3, 750.00, '2024-03-12'), ('Frank', 'Headphones', 2, 100.00, '2024-04-08'), ('Grace', 'Smartwatch', 1, 300.00, '2024-04-25'), ('Hannah', 'Tablet', 2, 480.00, '2024-05-05'), ('Isaac', 'Laptop', 1, 1250.00, '2024-05-15'), ('Jack', 'Smartphone', 1, 820.00, '2024-06-01');

select * from Sales_20

select customername, product, quantity
from Sales_20 s
where exists(
select 1 customername
from Sales_20 s2
where s.CustomerName=s2.CustomerName
and s2.SaleDate between '2024-03-01' and '2024-03-31'
);
---------2
select customername, product
from Sales_20 s
where (Quantity* Price)=(
select max(totalrevenue)
from (select product,sum(Quantity* Price) totalrevenue
from Sales_20
group by product) revenue);

SELECT Product 
FROM Sales_20 
WHERE Product IN (
    SELECT Product 
    FROM Sales_20 
    GROUP BY Product
    HAVING SUM(Quantity * Price) = (
        SELECT MAX(TotalRevenue)
        FROM (
            SELECT Product, SUM(Quantity * Price) AS TotalRevenue
            FROM Sales_20 
            GROUP BY Product
        ) AS RevenueData
    )
);

--------3
select max(saleamount) highsale
from(
select distinct quantity*price saleamount
from Sales_20
order by saleamount desc
offset 1 rows fetch next 1 rows only
) subquery

--------4
select salemonth, 
(select sum(quantity) from Sales_20 s2
where month(s2.SaleDate)=s1.salemonth) totalqty
from(select distinct month(saledate) salemonth from Sales_20) s1

--------5
select distinct s1.customername
from Sales_20 s1
where exists(
select 1 
from Sales_20 s2
where s1.Product=s2.Product
and s1.CustomerName<>s2.CustomerName);

----------6
create table Fruits(Name varchar(50), Fruit varchar(50)) insert into Fruits values ('Francesko', 'Apple'), ('Francesko', 'Apple'), ('Francesko', 'Apple'), ('Francesko', 'Orange'), ('Francesko', 'Banana'), ('Francesko', 'Orange'), ('Li', 'Apple'), ('Li', 'Orange'), ('Li', 'Apple'), ('Li', 'Banana'), ('Mario', 'Apple'), ('Mario', 'Apple'), ('Mario', 'Apple'), ('Mario', 'Banana'), ('Mario', 'Banana'), ('Mario', 'Orange')

select * from Fruits
select name,
sum(case when fruit = 'apple' then 1 else 0 end) apple,
sum(case when fruit='orange' then 1 else 0 end)orange,
sum(case when fruit='banana' then 1 else 0 end) banana
from fruits
group by name
order by name;

---------7
create table Family(ParentId int, ChildID int) insert into Family values (1, 2), (2, 3), (3, 4)
select * from Family
go
with familytree as(
select parentid old, childid young
from Family
union  all
select ft.old, f.childid
from familytree ft
join Family f on ft.young=f.ParentId)
select old, young from familytree
order by old, young;


--------8

CREATE TABLE Orders_20 ( CustomerID INTEGER, OrderID INTEGER, DeliveryState VARCHAR(100) NOT NULL, Amount MONEY NOT NULL, PRIMARY KEY (CustomerID, OrderID) ); 

INSERT INTO Orders_20 (CustomerID, OrderID, DeliveryState, Amount) VALUES (1001,1,'CA',340),(1001,2,'TX',950),(1001,3,'TX',670), (1001,4,'TX',860),(2002,5,'WA',320),(3003,6,'CA',650), (3003,7,'CA',830),(4004,8,'TX',120); 

select * from Orders_20
select customerid, orderid, deliverystate
from Orders_20
where DeliveryState='TX'
and  CustomerID in(
select distinct CustomerID
from Orders_20
where DeliveryState='TX')

--------9
create table residents(resid int identity, fullname varchar(50), address varchar(100))

insert into residents values ('Dragan', 'city=Bratislava country=Slovakia name=Dragan age=45'), ('Diogo', 'city=Lisboa country=Portugal age=26'), ('Celine', 'city=Marseille country=France name=Celine age=21'), ('Theo', 'city=Milan country=Italy age=28'), ('Rajabboy', 'city=Tashkent country=Uzbekistan age=22')

select * from residents

UPDATE residents
SET fullname = 
    CASE 
        WHEN CHARINDEX('name=', address) > 0 
        THEN TRIM(SUBSTRING(address, CHARINDEX('name=', address) + 5, CHARINDEX(' ', address + ' ', CHARINDEX('name=', address) + 5) - CHARINDEX('name=', address) - 5))
        ELSE fullname
    END
WHERE fullname IS NULL OR fullname = '';

---------10
CREATE TABLE Routes ( RouteID INTEGER NOT NULL, DepartureCity VARCHAR(30) NOT NULL, ArrivalCity VARCHAR(30) NOT NULL, Cost MONEY NOT NULL, PRIMARY KEY (DepartureCity, ArrivalCity) ); 

INSERT INTO Routes (RouteID, DepartureCity, ArrivalCity, Cost) VALUES (1,'Tashkent','Samarkand',100), (2,'Samarkand','Bukhoro',200), (3,'Bukhoro','Khorezm',300), (4,'Samarkand','Khorezm',400), (5,'Tashkent','Jizzakh',100), (6,'Jizzakh','Samarkand',50);

select * from Routes
go
WITH RoutePaths AS (
    SELECT DepartureCity, ArrivalCity, Cost, 
           CAST(DepartureCity + ' - ' + ArrivalCity AS VARCHAR(100)) AS Path
    FROM Routes
    WHERE DepartureCity = 'Tashkent'  -- Start from Tashkent

    UNION ALL

    SELECT r.DepartureCity, r.ArrivalCity, rp.Cost + r.Cost AS TotalCost, 
           CAST(rp.Path + ' - ' + r.ArrivalCity AS VARCHAR(100))
    FROM Routes r
    JOIN RoutePaths rp ON rp.ArrivalCity = r.DepartureCity
)
SELECT Path, Cost AS TotalCost
FROM RoutePaths
WHERE ArrivalCity = 'Khorezm'
ORDER BY Cost ASC;


---------11
CREATE TABLE RankingPuzzle ( ID INT ,Vals VARCHAR(10) ) 

INSERT INTO RankingPuzzle VALUES (1,'Product'), (2,'a'), (3,'a'), (4,'a'), (5,'a'), (6,'Product'), (7,'b'), (8,'b'), (9,'Product'), (10,'c')

select * from RankingPuzzle

select id, vals,
rank() over(order by id asc) rank
from RankingPuzzle
where Vals='Product'
order by ID

----------12
CREATE TABLE Consecutives ( Id VARCHAR(5)
,Vals INT /* Value can be 0 or 1 */ ) 

INSERT INTO Consecutives VALUES ('a', 1), ('a', 0), ('a', 1), ('a', 1), ('a', 1), ('a', 0), ('b', 1), ('b', 1), ('b', 0), ('b', 1), ('b', 0)

select * from Consecutives

go
WITH Numbered AS (
    SELECT Id, Vals, 
           ROW_NUMBER() OVER (PARTITION BY Id ORDER BY (SELECT NULL)) AS RowNum
    FROM Consecutives
), ConsecutiveCounts AS (
    SELECT Id, Vals, COUNT(*) AS ConsecutiveCount
    FROM (
        SELECT n1.Id, n1.Vals,
               SUM(CASE WHEN n1.Vals = n2.Vals AND n1.RowNum = n2.RowNum + 1 THEN 0 ELSE 1 END) 
               OVER (PARTITION BY n1.Id ORDER BY n1.RowNum) AS Grouping
        FROM Numbered n1
        LEFT JOIN Numbered n2 ON n1.Id = n2.Id AND n1.RowNum = n2.RowNum + 1
    ) t
    GROUP BY Id, Vals, Grouping
), MaxConsecutive AS (
    SELECT Id, MAX(ConsecutiveCount) AS MaxConsecutive
    FROM ConsecutiveCounts
    GROUP BY Id
), NextValue AS (
    SELECT DISTINCT Id, 
           LAST_VALUE(Vals) OVER (PARTITION BY Id ORDER BY RowNum ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS NextVal
    FROM Numbered
)
SELECT n.Id, nv.NextVal, mc.MaxConsecutive
FROM NextValue nv
JOIN MaxConsecutive mc ON nv.Id = mc.Id
JOIN Consecutives n ON nv.Id = n.Id
GROUP BY n.Id, nv.NextVal, mc.MaxConsecutive
ORDER BY n.Id;


--------13
 CREATE TABLE EmployeeSales ( EmployeeID INT PRIMARY KEY IDENTITY(1,1), EmployeeName VARCHAR(100), Department VARCHAR(50), SalesAmount DECIMAL(10,2), SalesMonth INT, SalesYear INT );

  INSERT INTO EmployeeSales (EmployeeName, Department, SalesAmount, SalesMonth, SalesYear) VALUES ('Alice', 'Electronics', 5000, 1, 2024), ('Bob', 'Electronics', 7000, 1, 2024), ('Charlie', 'Furniture', 3000, 1, 2024), ('David', 'Furniture', 4500, 1, 2024), ('Eve', 'Clothing', 6000, 1, 2024), ('Frank', 'Electronics', 8000, 2, 2024), ('Grace', 'Furniture', 3200, 2, 2024), ('Hannah', 'Clothing', 7200, 2, 2024), ('Isaac', 'Electronics', 9100, 3, 2024), ('Jack', 'Furniture', 5300, 3, 2024), ('Kevin', 'Clothing', 6800, 3, 2024), ('Laura', 'Electronics', 6500, 4, 2024), ('Mia', 'Furniture', 4000, 4, 2024), ('Nathan', 'Clothing', 7800, 4, 2024);



select * from EmployeeSales;

select employeename, department, salesamount
from EmployeeSales e
where SalesAmount>(select avg(salesamount)
from EmployeeSales
where Department=e.Department);

-----------14
select employeename, department, salesamount
from EmployeeSales e
where exists(
select 1 
from EmployeeSales em
where em.SalesMonth=e.SalesMonth
and em.SalesYear=e.SalesYear
and em.SalesAmount=(
select max(salesamount)
from EmployeeSales
where SalesMonth=e.SalesMonth
and SalesYear=e.SalesYear));

----------15
select e.employeename, e.department
from EmployeeSales e
where not exists(
select 1
from EmployeeSales em
where em.SalesMonth not in (
select distinct SalesMonth
from EmployeeSales
where EmployeeID=e.EmployeeID));


------16
CREATE TABLE Products_20 ( ProductID INT PRIMARY KEY, Name VARCHAR(50), Category VARCHAR(50), Price DECIMAL(10,2), Stock INT );

INSERT INTO Products_20 (ProductID, Name, Category, Price, Stock) VALUES (1, 'Laptop', 'Electronics', 1200.00, 15), (2, 'Smartphone', 'Electronics', 800.00, 30), (3, 'Tablet', 'Electronics', 500.00, 25), (4, 'Headphones', 'Accessories', 150.00, 50), (5, 'Keyboard', 'Accessories', 100.00, 40), (6, 'Monitor', 'Electronics', 300.00, 20), (7, 'Mouse', 'Accessories', 50.00, 60), (8, 'Chair', 'Furniture', 200.00, 10), (9, 'Desk', 'Furniture', 400.00, 5), (10, 'Printer', 'Office Supplies', 250.00, 12), (11, 'Scanner', 'Office Supplies', 180.00, 8), (12, 'Notebook', 'Stationery', 10.00, 100), (13, 'Pen', 'Stationery', 2.00, 500), (14, 'Backpack', 'Accessories', 80.00, 30), (15, 'Lamp', 'Furniture', 60.00, 25);

select * from Products_20

select name, category,price
from Products_20
where price>(
select avg(price)
from Products_20);

--------17
select name, category, stock
from Products_20
where stock<(
select max(stock)
from Products_20
);

------18
select name, category
from Products_20
where Category=(
select Category
from Products_20
where name='Laptop');

----19
select name, category, price
from Products_20
where Price>(
select min(price)
from Products_20
where Category='Electronics');
select * from Products_20
----20
select name, category, price
from Products_20 p
where price>(
select avg(price)
from Products_20
where Category=p.Category);

CREATE TABLE Orders_20_1 ( OrderID INT PRIMARY KEY, ProductID INT, Quantity INT, OrderDate DATE, FOREIGN KEY (ProductID) REFERENCES Products(ProductID) );

INSERT INTO Orders_20_1 (OrderID, ProductID, Quantity, OrderDate) VALUES (1, 1, 2, '2024-03-01'), (2, 3, 5, '2024-03-05'), (3, 2, 3, '2024-03-07'), (4, 5, 4, '2024-03-10'), (5, 8, 1, '2024-03-12'), (6, 10, 2, '2024-03-15'), (7, 12, 10, '2024-03-18'), (8, 7, 6, '2024-03-20'), (9, 6, 2, '2024-03-22'), (10, 4, 3, '2024-03-25'), (11, 9, 2, '2024-03-28'), (12, 11, 1, '2024-03-30'), (13, 14, 4, '2024-04-02'), (14, 15, 5, '2024-04-05'), (15, 13, 20, '2024-04-08');


select * from Products_20
select * from Orders_20_1

select productid, name, category
from Products_20
where ProductID in(
select distinct ProductID
from Orders_20);

-------22
select name 
from Products_20
where ProductID in (
select ProductID
from Orders_20_1
where Quantity>(select avg(quantity) from Orders_20_1));

-------23
select name, category
from Products_20
where ProductID not in(
select distinct ProductID
from Orders_20_1
);

--------24
select name, category, price
from Products_20
where ProductID=(
select top 1 ProductID
from Orders_20_1
group by ProductID
order by sum(quantity) desc);


-------25
select productid, name, category, price
from Products_20
where ProductID in(
select ProductID
from Orders_20_1
group by ProductID
having count(orderid)>(select avg(ordercount) 
from (select count(orderid) as ordercount from Orders_20_1
group by ProductID) avgorder));





