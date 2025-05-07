use example_db

select * from Orders
select * from Customers

-----easy task
----1

select Orders.OrderID, Orders.OrderDate, Customers.CustomerName
from Orders
inner join Customers on Orders.CustomerID=Customers.CustomerID
and OrderDate > '2022'

-----2
select * from Employees_40
select * from EmployeeDepartments

select Employees_40.Name, EmployeeDepartments.DepartmentName
from Employees_40
join EmployeeDepartments on Employees_40.DepartmentID=EmployeeDepartments.DepartmentID
and (EmployeeDepartments.DepartmentName='Sales' or EmployeeDepartments.DepartmentName='Marketing')


------3

select * from Orders
select * from Products

SELECT 
    O.ProductID, 
    Products.ProductName, 
   Products.Price
    
FROM orders o
    JOIN(SELECT * FROM Products WHERE Price > 100) 
 products 
    
ON  O.ProductID = Products.ProductID

-----4

SELECT 
    Orders.OrderID, 
    Orders.OrderDate
FROM  Orders
 JOIN  Temp_Orders
ON Orders.OrderID = Temp_Orders.OrderID;

-----5

select * from EmployeeDepartments
select * from Sales

create table Sales_Emp(
EmployeeID int primary key,
DepartmentID int
)
alter table Sales_Emp
add Sales_amount varchar(100);


insert into Sales_Emp(EmployeeID, DepartmentID,sales_amount)
Values
(1,1,10000),
(2,2,76888),
(3,3,91210),
(4,4,97652),
(5,5,46464),
(6,1,13211),
(7,2,66464),
(8,3,13212),
(9,4,84211),
(10,5,90633),
(11,1,94544),
(12,2,96164),
(13,3,96000),
(14,4,46888),
(15,5,21006),
(16,1,45999),
(17,2,70000),
(18,3,90748),
(19,4,48889),
(20,5,56522),
(21,1,60633),
(22,2,97780),
(23,3,48556),
(24,4,97500),
(25,5,87000),
(26,1,81200),
(27,2,90000),
(28,3,60000),
(29,4,45454),
(30,5,80555),
(31,1,70000),
(32,2,20000),
(33,3,45488),
(34,4,30000),
(35,5,29555),
(36,1,50000),
(37,2,21000),
(38,3,15000),
(39,4,100000),
(40,5,85500);

select * from EmployeeDepartments
select * from Sales_Emp

select  E.DepartmentName, S.sales_amount
from EmployeeDepartments e
cross apply (
select top 5 * 
from Sales_Emp s
where e.DepartmentID=S.departmentID
) orders



-----6
select * from Customers
select * from Orders

select c.customername,o.orderdate
from Customers c
join Orders o
on c.CustomerID=o.CustomerID
--and c.loyalty='gold'
and year(o.OrderDate)='2023';


-----7
select c.customername, Orders.CustomerID
from Customers c
left join (select customerID, count(*) o
from orders 
group by CustomerID)
orders  on c.CustomerID=Orders.customerID;

-----8

select * from Suppliers
select * from Products

select p.productname, s.Supplier_type
from Products p
join Suppliers s on p.ProductID=s.ProductID
and(s.Supplier_type='A' or s.Supplier_type='B')

-------9
select * from Employees_40
select * from Orders_B
drop table Orders_B
alter table orders_b
add employee_ID int 

CREATE TABLE Orders_A (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
alter table orders_a
add employeeID int
alter table orders_a
add paymentID int
delete from Orders_A
select * from Orders_A
INSERT INTO Orders_A
VALUES
(1, 1, 2, '2024-01-10', 1, 800.00,1,1),
(2, 2, 3, '2024-01-11', 2, 800.00,2,2),
(3, 3, 4, '2024-01-12', 1, 250.00,3,3),
(4, 4, 5, '2024-01-13', 3, 150.00,4,4),
(5, 5, 6, '2024-01-14', 1, 30.00,5,5),
(6, 6, 7, '2024-01-15', 2, 300.00,6,6),
(7, 7, 8, '2024-01-16', 1, 200.00,7,7),
(8, 8, 9, '2024-01-17', 4, 40.00,8,8),
(9, 9, 10, '2024-01-18', 1, 10.00,9,9),
(10, 10, 11, '2024-01-19', 2, 360.00,10,10),
(11, 11, 12, '2024-01-20', 1, 500.00,11,11),
(12, 12, 13, '2024-01-21', 1, 25.00,12,12),
(13, 13, 14, '2024-01-22', 2, 60.00,13,13),
(14, 14, 15, '2024-01-23', 3, 135.00,14,14),
(15, 15, 16, '2024-01-24', 1, 80.00,15,15),
(16, 16, 17, '2024-01-25', 1, 60.00,16,16),
(17, 17, 18, '2024-01-26', 2, 40.00,17,17),
(18, 18, 19, '2024-01-27', 5, 50.00,18,18),
(19, 19, 20, '2024-01-28', 2, 50.00,19,19),
(20, 20, 21, '2024-01-29', 1, 60.00,20,20),
(21, 21, 22, '2024-02-01', 1, 100.00,21,21),
(22, 22, 23, '2024-02-02', 1, 15.00,22,22),
(23, 23, 24, '2024-02-03', 2, 180.00,23,23),
(24, 24, 25, '2024-02-04', 3, 15.00,24,24),
(25, 25, 26, '2024-02-05', 4, 100.00,25,25),
(26, 26, 27, '2024-02-06', 1, 450.00,26,26),
(27, 27, 28, '2024-02-07', 1, 600.00,27,27),
(28, 28, 29, '2024-02-08', 1, 500.00,28,28),
(29, 29, 30, '2024-02-09', 2, 240.00,29,29),
(30, 30, 31, '2024-02-10', 1, 350.00,30,30),
(31, 31, 32, '2024-02-11', 1, 450.00,31,31),
(32, 32, 33, '2024-02-12', 1, 40.00,32,32),
(33, 33, 34, '2024-02-13', 2, 100.00,33,33),
(34, 34, 35, '2024-02-14', 3, 120.00,34,34),
(35, 35, 36, '2024-02-15', 1, 60.00,35,35),
(36, 36, 37, '2024-02-16', 1, 35.00,36,36),
(37, 37, 38, '2024-02-17', 2, 110.00,37,37),
(38, 38, 39, '2024-02-18', 1, 40.00,38,38),
(39, 39, 40, '2024-02-19', 3, 120.00,39,39),
(40, 40, 1, '2024-02-20', 1, 1200.00,40,40);

select * from Orders_A
select * from EmployeeDepartments

select e.EmployeeName, o.Quantity
from EmployeeDepartments e
outer apply(
select top 1 o.orderid, o.quantity
from Orders_A o
where o.employeeID= e.EmployeeID
order by o.OrderID
) o


------10
select * from EmployeeDepartments
select * from Employees_40

select e.employeename, e.departmentname, b.departmentid
from EmployeeDepartments e
cross join (
select employeeid
from Employees_40 b
) employees_40  on e.departmentid= b.departmentid

-------medium task
----11

select * from Customers
select * from Orders_A

select c.customername, o.totalamount
from Customers c
join Orders_A o on c.CustomerID=o.CustomerID
and o.TotalAmount>5000

------12
select * from Products
select * from Sales

select p.productname, p.price,s.sales_qty
from Products p
join sales s on p.ProductID=s.ProductID
and(year(sales.saledate)='2022' or p.discount>20);

--------13
select p.ProductID,  
sum(p.price * s.sales_qty) totalSale
from Products p
join sales s on p.ProductID=s.ProductID
group by p.ProductID


------14
CREATE TABLE Temp_Products (
    ProductID INT PRIMARY KEY,
    Discontinued BIT NOT NULL
);
INSERT INTO Temp_Products (ProductID, Discontinued)
VALUES 
(1, 1), 
(2, 0),
(3, 1), 
(4, 0), 
(5, 1),
(6, 0), 
(7, 1), 
(8, 0), 
(9, 1), 
(10, 0),
(11, 1),
(12, 0),
(13, 1), 
(14, 0), 
(15, 1),
(16, 0), 
(17, 1), 
(18, 0), 
(19, 1), 
(20, 0),
(21, 1), 
(22, 0), 
(23, 1),
(24, 0), 
(25, 1),
(26, 0), 
(27, 1), 
(28, 0), 
(29, 1), 
(30, 0),
(31, 1), 
(32, 0), 
(33, 1), 
(34, 0), 
(35, 1),
(36, 0), 
(37, 1), 
(38, 0), 
(39, 1),
(40, 0);

select * from Products
select * from Temp_Products

select p.productname, t.discontinued
from Products p
 join Temp_Products t 
on p.ProductID=t.Discontinued
and t.Discontinued=1;

-------15
select * from Employees_40
select * from Sales_Emp

select e.employeeid, e.name, s.sales_amount
from Employees_40 e
cross apply (select s.sales_amount from Sales_Emp s
where e.EmployeeID=s.EmployeeID) s 

---------16
select * from Employees_40
select * from EmployeeDepartments

select e.employeeid, e.name, e.salary, d.departmentname
from Employees_40 e
join EmployeeDepartments d on e.EmployeeID=d.EmployeeID
and d.DepartmentName='HR'
and e.Salary>5000;

----------17
select * from Orders_A
select * from Payments

select o.orderid, o.orderdate,p.status
from Orders_A o
 join Payments p on o.paymentid=p.PaymentID
and p.status='fully paid'
or p.status='Partially Paid';

-----------18

select * from Orders
select * from Customers

select c.customerid, c.customername, o.quantity
from Customers c
outer apply ( select o.quantity from orders o
where c.CustomerID=o.customerid) o

-----19
select * from Products
select * from Sales

select p.productid, p.productname, s.saledate
from Products p
inner join sales s on p.ProductID=s.SalesID
and year(s.saledate)=2023
and p.rate>4;

-------20

select * from Employees_40
select * from EmployeeDepartments

select e.employeeid, e.name,d.departmentname
from Employees_40 e
inner join EmployeeDepartments d
on e.EmployeeID=d.DepartmentID
and d.DepartmentName='Sales'
or d.jobtitle='manager'


----hard-level tasks

-------21

select * from Orders
select * from Customers

select o.orderid, c.customername, o.quantity, c.city
from orders o
join Customers c on o.CustomerID=c.CustomerID
and c.city='new york'
and o.Quantity>10

--------22
select * from ProductCategories
select * from Sales

select p.categoryid, p.categoryname, s.sales_qty, p.discount
from ProductCategories p
join Sales s on p.ProductID=s.ProductID
and p.CategoryName='electronics'
or p.discount>15

-------23
select * from ProductCategories
select * from Orders

select p.categoryid, p.categoryname, o.totalquantity
from ProductCategories p
left join ( select productid, count(*) totalquantity from orders
group by productid) o
on p.ProductID=o.ProductID

-----24
select * from Employees_40
select * from EmployeeDepartments

select t.employees,e.name,d.departmentname
from temp_employees t
 join EmployeeDepartments d
on t.DepartmentID=d.DepartmentID
and d.DepartmentName='IT'
and t.Salary>4000

------25
select d.departmentname, d.departmentid
from EmployeeDepartments d
cross apply (select count(EmployeeID) employeecount from Employees_40 e
where d.DepartmentID=e.departmentid) e

CREATE FUNCTION dbo.GetEmployeeCountByDepartment(@DepartmentID INT)
RETURNS TABLE
AS
RETURN (
    SELECT COUNT(*) AS EmployeeCount
    FROM Employees_40
    WHERE DepartmentID = @DepartmentID
);

-------26
select o.orderid, c.customername, o.quantity, c.city
from orders o
join Customers c on o.CustomerID=c.CustomerID
and c.city='california'
and o.amount>1000

-----27

select * from Employees_40
select * from EmployeeDepartments

select e.employeeid, e.name, d.departmentname
from Employees_40 e
join EmployeeDepartments d
on e.DepartmentID=d.DepartmentID
and d.DepartmentName='HR'
or d.DepartmentName='Finance'
or d.jobtitle='Executive'


SELECT 
    E.EmployeeID, 
    E.Name , 
     
    D.DepartmentName
FROM 
    Employees_40 e
 JOIN 
    EmployeeDepartments d
ON 
    E.DepartmentID = D.DepartmentID 
    AND 
    (D.DepartmentName IN ('HR', 'Finance') )OR Employees.JobTitle LIKE '%Executive%');

	select * from Customers
	select * from Orders

	select c.customername, o.quantity
	from Customers c
	outer apply ( select o.quantity from Orders o
	where c.CustomerID=o.CustomerID) o

--------29
select * from sales
select * from Products

select p.productname, s.salesid, s.Sales_qty
from Products p
join sales s on p.ProductID=s.ProductID
and s.Sales_qty>100
and p.Price>50

---------30
select * from Employees_40
select * from EmployeeDepartments

select e.employeeID, e.name,e.salary,d.departmentname
from Employees_40 e
join EmployeeDepartments d
on e.DepartmentID=d.DepartmentID
and d.DepartmentName='Sales'
or d.DepartmentName='Marketing'
and e.Salary>6000