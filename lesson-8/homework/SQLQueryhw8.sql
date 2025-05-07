USE Homework_new_tables

select * from products

CREATE TABLE Products_Discounted ( ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Price DECIMAL(10, 2), Category VARCHAR(50), StockQuantity INT );

INSERT INTO Products_Discounted VALUES (1, 'Gaming Laptop', 950.00, 'Electronics', 25), (2, 'High-End Smartphone', 750.00, 'Electronics', 45), (3, 'Convertible Tablet', 350.00, 'Electronics', 35), (4, 'Ultra-Wide Monitor', 220.00, 'Electronics', 55), (5, 'Mechanical Keyboard', 45.00, 'Accessories', 90), (6, 'Wireless Mouse', 25.00, 'Accessories', 110), (7, 'Ergonomic Chair', 130.00, 'Furniture', 75), (8, 'Standing Desk', 190.00, 'Furniture', 70), (9, 'Luxury Pen', 4.50, 'Stationery', 280), (10, 'Leather Notebook', 9.00, 'Stationery', 480), (11, 'Laser Printer', 160.00, 'Electronics', 20), (12, 'DSLR Camera', 480.00, 'Electronics', 35), (13, 'LED Flashlight', 20.00, 'Tools', 190), (14, 'Designer Shirt', 28.00, 'Clothing', 140), (15, 'Slim Fit Jeans', 40.00, 'Clothing', 110), (16, 'Winter Jacket', 70.00, 'Clothing', 60), (17, 'Running Shoes', 55.00, 'Clothing', 90), (18, 'Wool Hat', 18.00, 'Accessories', 45), (19, 'Thermal Socks', 9.00, 'Clothing', 180), (20, 'Graphic T-Shirt', 22.00, 'Clothing', 140), (21, 'Desk Lamp', 55.00, 'Furniture', 35), (22, 'Marble Coffee Table', 95.00, 'Furniture', 30), (23, 'Hardcover Book', 13.00, 'Stationery', 230), (24, 'Persian Rug', 85.00, 'Furniture', 50), (25, 'Glass Cup', 4.50, 'Accessories', 470), (26, 'Leather Bag', 22.00, 'Accessories', 270), (27, 'Recliner Couch', 420.00, 'Furniture', 10), (28, 'Smart Fridge', 570.00, 'Electronics', 15), (29, 'Gas Stove', 460.00, 'Electronics', 12), (30, 'Compact Microwave', 100.00, 'Electronics', 20), (31, 'Split Air Conditioner', 320.00, 'Electronics', 8), (32, 'Front-Load Washing Machine', 410.00, 'Electronics', 12), (33, 'High-Efficiency Dryer', 370.00, 'Electronics', 8), (34, 'Ionic Hair Dryer', 27.00, 'Accessories', 90), (35, 'Steam Iron', 38.00, 'Electronics', 45), (36, 'Espresso Maker', 45.00, 'Electronics', 55), (37, 'Portable Blender', 32.00, 'Electronics', 35), (38, 'Cold Press Juicer', 50.00, 'Electronics', 28), (39, 'Smart Toaster', 36.00, 'Electronics', 65), (40, 'Compact Dishwasher', 470.00, 'Electronics', 18);

CREATE TABLE Invoices ( InvoiceID INT PRIMARY KEY, CustomerID INT, InvoiceDate DATE, TotalAmount DECIMAL(10, 2) );

INSERT INTO Invoices (InvoiceID, CustomerID, InvoiceDate, TotalAmount) VALUES (1, 1, '2023-01-05', 150.00), (2, 2, '2023-01-07', 200.00), (3, 3, '2023-01-10', 250.00), (4, 4, '2023-01-12', 300.00), (5, 5, '2023-01-15', 350.00), (6, 6, '2023-01-18', 400.00), (7, 7, '2023-01-20', 450.00), (8, 8, '2023-01-23', 500.00), (9, 9, '2023-01-25', 550.00), (10, 10, '2023-01-28', 600.00), (11, 11, '2023-02-02', 150.00), (12, 12, '2023-02-04', 200.00), (13, 13, '2023-02-07', 250.00), (14, 14, '2023-02-09', 300.00), (15, 15, '2023-02-11', 350.00), (16, 16, '2023-02-13', 400.00), (17, 17, '2023-02-15', 450.00), (18, 18, '2023-02-17', 500.00), (19, 19, '2023-02-19', 550.00), (20, 20, '2023-02-21', 600.00), (21, 21, '2023-02-24', 150.00), (22, 22, '2023-02-26', 200.00), (23, 23, '2023-02-28', 250.00), (24, 24, '2023-03-02', 300.00), (25, 25, '2023-03-04', 350.00), (26, 26, '2023-03-06', 400.00), (27, 27, '2023-03-08', 450.00), (28, 28, '2023-03-10', 500.00), (29, 29, '2023-03-12', 550.00), (30, 30, '2023-03-14', 600.00), (31, 31, '2023-03-17', 150.00), (32, 32, '2023-03-19', 200.00), (33, 33, '2023-03-21', 250.00), (34, 34, '2023-03-23', 300.00), (35, 35, '2023-03-25', 350.00), (36, 36, '2023-03-27', 400.00), (37, 37, '2023-03-29', 450.00), (38, 38, '2023-03-31', 500.00), (39, 39, '2023-04-02', 550.00), (40, 40, '2023-04-04', 600.00);

----easy-level task
----1
select productname, count(productid) availableproducts
from products
group by productname

----2
select * from products
select * from categories

select avg(price)
from products
where category='1';

----3
select * from customers

select *
from customers
where city like 'L%'

----4
select * from products
where productname like '%er'

----5
select * from customers
where country like '%a'

-----6
select max(price)
from products

----7
select iif(stockquantity<30, 'low stock','sufficient')
from products

----8
select country,
count(customerid)
from customers
group by country

----9
select * from orders
select 
min(quantity),
max(quantity)
from orders
use Homework_new_tables
----medium-level tasks
---10
select * from Orders
select * from Invoices

select distinct customerID
from Orders
where year(OrderDate)=2023
except
select distinct customerID
from Invoices

----11
select * from Products
select * from Products_Discounted

select productname
from Products
union all
select productname
from Products_Discounted

-----12
select productname
from Products
union 
select productname
from Products_Discounted

----13
select * from Orders
select year(orderdate) orderyear,
avg(totalamount) avrtotal
from orders
group by orderdate
order by  orderyear

------14
select * from Products

select productname,price, 
case
when price<100 then 'low' 
when price>500 then 'high'
else 'mid'
end
from products

-----15
select * from Customers
select distinct city
from Customers
order by city

----16
select * from sales

select productid,
sum(saleamount) totalsales
from sales
group by productid
order by totalsales

----17
select * from Products
select *
from Products
where productname like '%oo%'

----18
select productid
from Products
intersect
select productid
from Products_Discounted

----19
select * from Invoices
select top 3 invoiceid, 
sum(totalamount) totalspent
from Invoices
group by InvoiceID
order by totalspent desc 

----20
select * from Products
select * from Products_Discounted

select productid, productname
from products
where productid  in (select productid from Products_Discounted)


select productid, productname
from products
where productid not in (select productid from Products_Discounted)

--21
select * from Products
select * from sales

select p.productname,  count(saleid) totalnumbersold
from Products p
join sales s on
p.ProductID=s.productid
group by p.productname

-----22
select * from Orders
select top 5 ProductID, sum(Quantity) totalquantity
from orders
group by ProductID
order by totalquantity desc




































