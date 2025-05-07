CREATE TABLE Employees21 ( EmployeeID INT PRIMARY KEY, Name VARCHAR(50), Department VARCHAR(50), Salary DECIMAL(10,2), HireDate DATE );

INSERT INTO Employees21 (EmployeeID, Name, Department, Salary, HireDate) VALUES (1, 'John Smith', 'IT', 60000.00, '2020-03-15'), (2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'), (3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'), (4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'), (5, 'William Wilson', 'IT', 62000.00, '2022-06-12'), (6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'), (7, 'James Anderson', 'HR', 52000.00, '2020-04-18'), (8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'), (9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'), (10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'), (11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'), (12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'), (13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'), (14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'), (15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'), (16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'), (17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'), (18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'), (19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'), (20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');


select * from Employees21

CREATE TABLE ProductSales ( SaleID INT PRIMARY KEY, ProductName VARCHAR(50) NOT NULL, SaleDate DATE NOT NULL, SaleAmount DECIMAL(10, 2) NOT NULL, Quantity INT NOT NULL, CustomerID INT NOT NULL );

INSERT INTO ProductSales (SaleID, ProductName, SaleDate, SaleAmount, Quantity, CustomerID) VALUES (1, 'Product A', '2023-01-01', 150.00, 2, 101), (2, 'Product B', '2023-01-02', 200.00, 3, 102), (3, 'Product C', '2023-01-03', 250.00, 1, 103), (4, 'Product A', '2023-01-04', 150.00, 4, 101), (5, 'Product B', '2023-01-05', 200.00, 5, 104), (6, 'Product C', '2023-01-06', 250.00, 2, 105), (7, 'Product A', '2023-01-07', 150.00, 1, 101), (8, 'Product B', '2023-01-08', 200.00, 8, 102), (9, 'Product C', '2023-01-09', 250.00, 7, 106), (10, 'Product A', '2023-01-10', 150.00, 2, 107), (11, 'Product B', '2023-01-11', 200.00, 3, 108), (12, 'Product C', '2023-01-12', 250.00, 1, 109), (13, 'Product A', '2023-01-13', 150.00, 4, 110), (14, 'Product B', '2023-01-14', 200.00, 5, 111), (15, 'Product C', '2023-01-15', 250.00, 2, 112), (16, 'Product A', '2023-01-16', 150.00, 1, 113), (17, 'Product B', '2023-01-17', 200.00, 8, 114), (18, 'Product C', '2023-01-18', 250.00, 7, 115), (19, 'Product A', '2023-01-19', 150.00, 3, 116), (20, 'Product B', '2023-01-20', 200.00, 4, 117), (21, 'Product C', '2023-01-21', 250.00, 2, 118), (22, 'Product A', '2023-01-22', 150.00, 5, 119), (23, 'Product B', '2023-01-23', 200.00, 3, 120), (24, 'Product C', '2023-01-24', 250.00, 1, 121), (25, 'Product A', '2023-01-25', 150.00, 6, 122), (26, 'Product B', '2023-01-26', 200.00, 7, 123), (27, 'Product C', '2023-01-27', 250.00, 3, 124), (28, 'Product A', '2023-01-28', 150.00, 4, 125), (29, 'Product B', '2023-01-29', 200.00, 5, 126), (30, 'Product C', '2023-01-30', 250.00, 2, 127);

select * from ProductSales
-----------1
select saleid, productname, saleamount,
row_number() over(order by saledate) as rank
from ProductSales

---------2
select productname, sum(quantity) totalsale,
dense_rank() over (order by sum(quantity) desc) rank
from ProductSales
group by productname
order by rank;


--------subquery
select productname, totalsale,(
select dense_rank() over(order by totalsale desc)
from (select productname, sum(quantity) totalsale
from ProductSales
group by ProductName) rankofproduct
where rankofproduct.ProductName=P.ProductName) rank
from (select productname, sum(quantity) totalsale
from ProductSales
group by ProductName) p;

-------cte
go
with producttotal as(
select productname, sum(quantity) totalsale
from ProductSales
group by ProductName),
rankofproduct as(
select productname, totalsale, 
dense_rank() over(order by totalsale) rank
from producttotal)

select productname, totalsale, rank
from rankofproduct
order by rank;

-------stored procedure
go
create procedure rankofsaleproduct
as
begin
with producttotal as(
select productname, sum(quantity) totalsale
from ProductSales
group by productname),

rankofproduct as(
select productname, totalsale,
dense_rank() over(order by totalsale desc) rank
from producttotal)

select productname, totalsale, rank
from rankofproduct
order by rank
end;

exec rankofsaleproduct;

---------udf
go
create function dbo.productrank()
returns table
as
return(
with producttotal as(
select productname, sum(quantity) totalsale
from productsales
group by productname)
select productname, totalsale,
dense_rank() over(order by totalsale desc) rank
from producttotal);
go
select * from dbo.productrank()


--------3
select * from ProductSales
go
with rankofsale as(
select productname, saleamount, quantity,
row_number() over(partition by customerid order by saleamount desc) salerank
from ProductSales)
select productname, saleamount, quantity
from rankofsale
where salerank=1
group by ProductName,saleamount, quantity;

----------subquery
select productname, saleamount, quantity,customerid, saledate
from (
select productname, saleamount, quantity,customerid, saledate,
rank() over(partition by customerid order by saleamount desc) salerank
from ProductSales) rankofsale
where salerank=1;

--------udf
go
create function dbo.topsalescustomer()
returns table
as
return(
with rankofsale as(
select productname, saleamount, quantity, customerid,
rank() over(partition by customerid order by saleamount desc) salerank
from productsales)
select productname, saleamount, quantity,customerid
from rankofsale
where salerank=1);
go
select * from dbo.topsalescustomer()

--------stored procedure
go
create procedure topsalescustomers
as
begin
with rankofsale as(
select productname, saleamount,quantity, customerid,
rank() over(partition by customerid order by saleamount desc) salerank
from productsales)

select productname, saleamount, quantity, customerid
from rankofsale
where salerank=1;
end;
go

exec topsalescustomers

----------4
select saleid, productname, saledate, saleamount,
lead(saleamount,1) over(order by saledate) nextamountofmonth
from ProductSales;

--------cte
with nextmonthsale as(
select saleid, productname, saledate, saleamount,
lead(saleamount) over(order by saledate) nextmonthsales
from ProductSales)
select saleid, productname, saledate, saleamount, nextmonthsales
from nextmonthsale;

-------stored procedure
go
create procedure nextmonthsale
as
begin
with monthsales as(
select saleid, productname, saledate,saleamount, 
lead(saleamount) over(order by saledate) nextmonthsales
from ProductSales)
select saleid, productname, saledate, saleamount, nextmonthsales
from monthsales;
end
exec nextmonthsale

-----------udf
go
create function nextmonthsale_2()
returns table
as
return(
select saleid, productname, saledate, saleamount, 
lead(saleamount) over(order by saledate) nextmonthsales
from ProductSales);
go
select * from nextmonthsale_2()

-------subquery
select saleid, productname, saledate, saleamount,
(select lead(saleamount) over(order by saledate)
from ProductSales as p
where p.SaleID=pd.saleid) nextsale
from ProductSales pd
order by SaleDate

----------5
select saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previoussale
from ProductSales;

--------cte
go
with previoussale as(
select saleid, productname,saledate, saleamount,
lag(saleamount,1) over(order by saledate) previoussales
from ProductSales)

select saleid, productname, saledate, saleamount, previoussales
from previoussale
order by SaleDate;
go

--------udf
go
create function previoussalemonth()
returns table
as
return(
select saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previoussale
from ProductSales);
go
select * from previoussalemonth()

-------stored procedure
go
create procedure previoussales
as
begin
select saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previoussale
from ProductSales
order by SaleDate;
end;
go

exec previoussales

---------subquery
select saleid, productname, saledate, saleamount,
(select lag(saleamount) over(order by saledate)
from ProductSales p
where p.SaleID=pd.saleid) previoussale
from ProductSales pd
order by SaleDate;


--------6
select saleid, productname, saledate, saleamount, quantity,
dense_rank() over(partition by productname order by saleamount desc) salerank
from ProductSales
order by ProductName, salerank

---------cte
go
with rankproduct as(
select saleid, productname, saledate, saleamount, quantity,
dense_rank() over(partition by productname order by saleamount) ranksale
from ProductSales)
select saleid, productname, saledate, saleamount, ranksale
from rankproduct
order by ProductName, ranksale;
go

-------udf
go
create function rankofproduct()
returns table
as
return(select saleid, productname, saledate, saleamount,
dense_rank() over(partition by productname order by saleamount desc) salerank
from ProductSales)
go
select * from rankofproduct()

-------stored procedure
go 
create procedure rankofproducts
as
begin
select saleid, productname, saledate, saleamount,
dense_rank() over(partition by productname order by saleamount desc) salerank
from ProductSales
order by ProductName, salerank;
end;
exec rankofproducts

---------subquery
SELECT SaleID, ProductName, SaleDate, SaleAmount,
       (SELECT COUNT(DISTINCT SaleAmount)
        FROM ProductSales AS SubQuery
        WHERE SubQuery.ProductName = MainQuery.ProductName
          AND SubQuery.SaleAmount >= MainQuery.SaleAmount) AS SaleRank
FROM ProductSales AS MainQuery
ORDER BY ProductName, SaleRank;

-----------7
go
with previoussales_2 as(
select saleid, productname, saledate, saleamount, 
lag(saleamount) over( order by saledate) previoussale
from ProductSales

)
select saleid, productname, saledate, saleamount,previoussale
from previoussales_2
where SaleAmount>previoussale
order by saledate;
go

--------udf
go
create function dbo.previoussales_2()
returns table
as
return(with saleprevious as(
select saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previoussale
from ProductSales
)
select saleid, productname, saledate,saleamount, previoussale
from saleprevious
where SaleAmount>previoussale
);
go

select * from dbo.previoussales_2()

------store procedure
go
create procedure previousofsales
as
begin
with previoussale_3 as(
select saleid, productname, saledate, saleamount, 
lag(saleamount) over(order by saledate) previoussale
from ProductSales)
select saleid, productname, saledate, saleamount, previoussale
from previoussale_3
where SaleAmount> previoussale
end;
go
exec previousofsales

----------8
select saleid, productname, saledate, saleamount,
lag(saleamount) over(  order by saledate) previoussale,
saleamount-lag(saleamount) over( order by saledate) difference
from ProductSales
order by SaleDate;

-------udf
go
create function differenceamount()
returns table
as
return(with differencesale as(select
saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previoussale,
saleamount-lag(saleamount) over(order by saledate) difference
from productsales)
select saleid, productname, saledate,saleamount,previoussale,difference
from differencesale)
go
select * from differenceamount()

----------9
select saleid, productname, saledate, saleamount,
lead(saleamount) over(order by saledate) as nextsale,
case
when lead(saleamount) over(order by saledate) is not null
then ((lead(saleamount) over(order by saledate)- saleamount)/saleamount)*100
else null
end as percentage
from ProductSales
order by SaleDate;



--------udf
go
create function nextsalemonth()
returns table
as
return
(
select saleid, productname, saledate, saleamount,
lead(saleamount) over(order by saledate) nextsale,
case
when lead(saleamount) over(order by saledate) is not null
then ((lead(saleamount) over(order by saledate)-saleamount)/saleamount)*100
else null
end as percentage
from productsales)
go
select * from nextsalemonth()

------store procedure
go
create procedure nextsalesmonth
as
begin
select saleid, productname, saledate,  saleamount, 
lead(saleamount) over(order by saledate) nextmonthsale,
case
when lead(saleamount) over(order by saledate) is not null
then ((lead(saleamount) over(order by saledate)-saleamount)/saleamount)*100
else null
end as percentage
from ProductSales
end;
go
exec nextsalesmonth

--------10
select saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previuossale,
case
when lag(saleamount) over(order by saledate) is not null
then saleamount/lag(saleamount) over(order by saledate) 
else null
end as saleratio
from ProductSales
order by SaleDate;

----11
select saleid, productname, saledate, saleamount,
first_value(saleamount) over(order by saledate) firstsale,
saleamount - first_value(saleamount) over(order by saledate) difference
from productsales
order by SaleDate;

------12
go
with increasingsale as(
select saleid, productname, saledate, saleamount,
lag(saleamount) over(order by saledate) previouscost
from ProductSales)
select saleid, productname, saledate, saleamount, previouscost
from increasingsale
where SaleAmount>previouscost
order by SaleDate;
go

--------13
select saleid, productname, saledate, saleamount,
sum(saleamount) over(order by saledate rows between unbounded preceding and current row) as closingbalance
from ProductSales
order by saledate;

-------14
select saleid, productname, saledate, saleamount,
avg(saleamount) over(order by saledate rows between 2 preceding and current row) avgsale
from ProductSales
order by SaleDate;

--------15
select saleid, productname, saledate, saleamount,
avg(saleamount) over() avgsale,
saleamount - avg(saleamount) over() difference
from ProductSales
order by SaleDate;


CREATE TABLE Employees11( EmployeeID INT PRIMARY KEY, Name VARCHAR(50), Department VARCHAR(50), Salary DECIMAL(10,2), HireDate DATE );

INSERT INTO Employees11(EmployeeID, Name, Department, Salary, HireDate) VALUES (1, 'John Smith', 'IT', 60000.00, '2020-03-15'), (2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'), (3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'), (4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'), (5, 'William Wilson', 'IT', 62000.00, '2022-06-12'), (6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'), (7, 'James Anderson', 'HR', 52000.00, '2020-04-18'), (8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'), (9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'), (10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'), (11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'), (12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'), (13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'), (14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'), (15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'), (16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'), (17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'), (18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'), (19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'), (20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');

select * from Employees11

---------16
select employeeid, name, department, salary,
dense_rank() over(order by salary desc) rank
from Employees11
order by rank;

SELECT EmployeeID, Name, Department, Salary, SalaryRank
FROM (
    SELECT EmployeeID, Name, Department, Salary,
           DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM Employees11
) RankedEmployees
WHERE SalaryRank IN (
    SELECT SalaryRank FROM (
        SELECT SalaryRank, COUNT(*) AS RankCount
        FROM (
            SELECT DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank, Salary
            FROM Employees11
        ) SubQuery
        GROUP BY SalaryRank
        HAVING COUNT(*) > 1
    ) SalaryGroups
)
ORDER BY SalaryRank;

------17
select employeeid, name, department, salary,salaryrank
from (
select  employeeid, name, department, salary,
dense_rank() over(partition by department order by salary desc) salaryrank
from Employees11) salaryrankemployee
where salaryrank<=2
order by Department, salaryrank;

-------18
select employeeid, name, department, salary,cast(employeeid as varchar)
from(
select employeeid, name, department, salary,
first_value(employeeid) over(partition by department order by salary asc) lowestsalaryempid,
first_value(name) over(partition by department order by salary asc) lowestpaidempid,
first_value(salary) over(partition by department order by salary asc) lowestsalary
from Employees11) lowestsalaryemp
where EmployeeID=lowestpaidempid
order by Department;

-----19
select employeeid, name, department, salary,
sum(salary) over(partition by department order by hiredate rows between unbounded preceding and current row) totalsalary
from Employees11
order by Department, HireDate;

-------20
select employeeid, name, department, salary,
sum(salary) over(partition by department) totalsalary
from Employees11
order by Department,EmployeeID;

-----21
select employeeid, name, department, salary,
avg(salary) over(partition by department) totalavg
from Employees11
order by Department, EmployeeID;

----------22
select employeeid, name, department, salary,
avg(salary) over(partition by department) avgdepsalary,
salary - avg(salary) over(partition by department) difference
from Employees11
order by Department, difference;

-----23
select employeeid, name, department, salary,
avg(salary) over(order by employeeid rows between 1 preceding and 1 following) movavgsalary
from Employees11
order by EmployeeID, movavgsalary;

--------24
select sum(salary) totalsalaryof3
from(
select top 3 salary
from Employees11
order by HireDate desc) lasthiredemp;


