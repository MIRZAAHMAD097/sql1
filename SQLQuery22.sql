CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    order_date DATE,
    region VARCHAR(50)
);

INSERT INTO sales_data VALUES
    (1, 101, 'Alice', 'Electronics', 'Laptop', 1, 1200.00, 1200.00, '2024-01-01', 'North'),
    (2, 102, 'Bob', 'Electronics', 'Phone', 2, 600.00, 1200.00, '2024-01-02', 'South'),
    (3, 103, 'Charlie', 'Clothing', 'T-Shirt', 5, 20.00, 100.00, '2024-01-03', 'East'),
    (4, 104, 'David', 'Furniture', 'Table', 1, 250.00, 250.00, '2024-01-04', 'West'),
    (5, 105, 'Eve', 'Electronics', 'Tablet', 1, 300.00, 300.00, '2024-01-05', 'North'),
    (6, 106, 'Frank', 'Clothing', 'Jacket', 2, 80.00, 160.00, '2024-01-06', 'South'),
    (7, 107, 'Grace', 'Electronics', 'Headphones', 3, 50.00, 150.00, '2024-01-07', 'East'),
    (8, 108, 'Hank', 'Furniture', 'Chair', 4, 75.00, 300.00, '2024-01-08', 'West'),
    (9, 109, 'Ivy', 'Clothing', 'Jeans', 1, 40.00, 40.00, '2024-01-09', 'North'),
    (10, 110, 'Jack', 'Electronics', 'Laptop', 2, 1200.00, 2400.00, '2024-01-10', 'South'),
    (11, 101, 'Alice', 'Electronics', 'Phone', 1, 600.00, 600.00, '2024-01-11', 'North'),
    (12, 102, 'Bob', 'Furniture', 'Sofa', 1, 500.00, 500.00, '2024-01-12', 'South'),
    (13, 103, 'Charlie', 'Electronics', 'Camera', 1, 400.00, 400.00, '2024-01-13', 'East'),
    (14, 104, 'David', 'Clothing', 'Sweater', 2, 60.00, 120.00, '2024-01-14', 'West'),
    (15, 105, 'Eve', 'Furniture', 'Bed', 1, 800.00, 800.00, '2024-01-15', 'North'),
    (16, 106, 'Frank', 'Electronics', 'Monitor', 1, 200.00, 200.00, '2024-01-16', 'South'),
    (17, 107, 'Grace', 'Clothing', 'Scarf', 3, 25.00, 75.00, '2024-01-17', 'East'),
    (18, 108, 'Hank', 'Furniture', 'Desk', 1, 350.00, 350.00, '2024-01-18', 'West'),
    (19, 109, 'Ivy', 'Electronics', 'Speaker', 2, 100.00, 200.00, '2024-01-19', 'North'),
    (20, 110, 'Jack', 'Clothing', 'Shoes', 1, 90.00, 90.00, '2024-01-20', 'South'),
    (21, 111, 'Kevin', 'Electronics', 'Mouse', 3, 25.00, 75.00, '2024-01-21', 'East'),
    (22, 112, 'Laura', 'Furniture', 'Couch', 1, 700.00, 700.00, '2024-01-22', 'West'),
    (23, 113, 'Mike', 'Clothing', 'Hat', 4, 15.00, 60.00, '2024-01-23', 'North'),
    (24, 114, 'Nancy', 'Electronics', 'Smartwatch', 1, 250.00, 250.00, '2024-01-24', 'South'),
    (25, 115, 'Oscar', 'Furniture', 'Wardrobe', 1, 1000.00, 1000.00, '2024-01-25', 'East')


-----easy questions
------1
select * from sales_data

select customer_id, customer_name, total_amount, order_date,
sum(total_amount) over(partition by customer_id order by order_date rows between unbounded preceding and current row ) totalsale
from sales_data
order by customer_id, order_date;

--------2
select product_category, count(*) ordercount
from sales_data
group by product_category
order by ordercount;

------3
select product_category, max(total_amount) maxtotalamount
from sales_data
group by product_category
order by maxtotalamount;

--------4
select product_name, min(unit_price) minprice
from sales_data
group by product_name
order by minprice desc;

----------5
select order_date, sum(total_amount) currsale,
avg(sum(total_amount)) over(order by order_date rows between 1 preceding and 1 following) avgmoving
from sales_data
group by order_date
order by order_date;

-------6
select region, sum(total_amount) total
from sales_data
group by region
order by total;

-----7
select customer_id, customer_name, totalpurchase,
rank() over(order by totalpurchase desc) rank
from(
select customer_id, customer_name, sum(total_amount) totalpurchase
from sales_data
group by customer_id, customer_name
) customertotal
order by rank;

--------8
select customer_id, customer_name, order_date, total_amount,
lag(total_amount) over( order by order_date) previoussale,
total_amount - lag(total_amount) over( order by order_date) difference
from sales_data
order by  order_date;

-----9
select product_category, product_name, unit_price, rank
from
(select product_category, product_name, unit_price,
dense_rank() over(partition by product_category order by unit_price) rank
from sales_data) rankofproduct
where rank<=3
order by product_category, rank;

-------10
select region, order_date, total_amount,
sum(total_amount) over(partition by region order by order_date rows between unbounded preceding and current row) cumulativesale
from sales_data
order by region, order_date;
-------medium tasks
----------11
select product_category, order_date, total_amount,
sum(total_amount) over(partition by product_category order by order_date rows between unbounded preceding and current row) totalrevenue
from sales_data
order by product_category, order_date;

-----------12
create table sample(ID int)
insert into sample values(1),(2),(3),(4),(5);

select ID,
sum(id) over(order by id rows between unbounded preceding and current row) sumprevalues
from sample
order by ID;

--------13
CREATE TABLE OneColumn (
    Value SMALLINT
);
INSERT INTO OneColumn VALUES (10), (20), (30), (40), (100);

select value,
sum(value) over(order by value rows between unbounded preceding and current row) sumofprevious
from OneColumn
order by Value;

-------14
CREATE TABLE Row_Nums (
    Id INT,
    Vals VARCHAR(10)
);
INSERT INTO Row_Nums VALUES
(101,'a'), (102,'b'), (102,'c'), (103,'f'), (103,'e'), (103,'q'), (104,'r'), (105,'p');

select id, vals,
row_number() over(order by id) * 2 -1 rownumber
from Row_Nums
order by rownumber;


-------15
select customer_id, customer_name, count(distinct product_category) categorycount
from sales_data
group by customer_id, customer_name
having count(distinct product_category)>1
order by categorycount;

-------16
select customer_id, customer_name, region, total_amount,avgspend
from(select customer_id, customer_name, region, total_amount,
avg(total_amount) over(partition by region) avgspend
from sales_data) salesofregion
where total_amount>avgspend
order by region, total_amount;

-------17
select customer_id, customer_name, region, totalspend,
dense_rank() over(partition by region order by totalspend) rank
from
(select customer_id, customer_name, region, sum(total_amount) totalspend
from sales_data
group by customer_id, customer_name, region) regionalspend
order by customer_id, rank;

------18
select customer_id, customer_name, order_date, total_amount,
sum(total_amount) over(partition by customer_id order by order_date) cumulativasales
from sales_data
order by customer_id,order_date;

--------19
SELECT FORMAT(Order_Date, '%Y-%m') AS Month, 
       SUM(Total_Amount) AS MonthlySales,
       LAG(SUM(Total_Amount)) OVER (ORDER BY FORMAT(Order_Date, '%Y-%m')) AS PreviousMonthSales,
       (SUM(Total_Amount) - LAG(SUM(Total_Amount)) OVER (ORDER BY FORMAT(Order_Date, '%Y-%m'))) / 
       LAG(SUM(Total_Amount)) OVER (ORDER BY FORMAT(Order_Date, '%Y-%m')) * 100 AS GrowthRate
FROM sales_data
GROUP BY FORMAT(Order_Date, '%Y-%m')
ORDER BY Month;

-----20
select * from sales_data

go
with previoussale as(
select customer_id, customer_name, total_amount, order_date,
lag(total_amount) over(partition by customer_id order by total_amount) previoussales
from sales_data)
select customer_id, customer_name, total_amount, order_date, previoussales
from previoussale
where total_amount>previoussales
order by customer_id, order_date;
go

----------21
select product_category, product_name, unit_price
from sales_data s
where unit_price>(select avg(unit_price)
from sales_data)
order by unit_price;


----------22
CREATE TABLE MyData (
    Id INT, Grp INT, Val1 INT, Val2 INT
);
INSERT INTO MyData VALUES
(1,1,30,29), (2,1,19,0), (3,1,11,45), (4,2,0,0), (5,2,100,17);


select * from MyData

select id, grp, val1, val2,
case
when row_number() over(partition by grp order by id)=1
then sum(val1+val2) over(partition by grp)
else null
end as total
from MyData
order by grp, id;

----------23
CREATE TABLE TheSumPuzzle (
    ID INT, Cost INT, Quantity INT
);
INSERT INTO TheSumPuzzle VALUES
(1234,12,164), (1234,13,164), (1235,100,130), (1235,100,135), (1236,12,136);

select * from TheSumPuzzle

select id, sum(cost) cost,
sum(distinct quantity) quantity
from TheSumPuzzle
group by id
order by id;


--------24
CREATE TABLE testSuXVI (
    Level TINYINT, TyZe TINYINT, Result CHAR(1)
);
INSERT INTO testSuXVI VALUES
(0, 1 ,'X'), (1, 5 ,'X'), (2, 2 ,'X'), (3, 2 ,'Z'), (1, 8 ,'X'), (2, 6 ,'Z'),
(1, 20 ,'X'), (2, 9 ,'X'), (3, 32 ,'X'), (4, 91 ,'Z'), (2, 21 ,'Z'), (3, 30 ,'Z');

select * from testSuXVI

select level, tyze, result,
case
when result='z'
then sum(tyze) over(order by level rows between unbounded preceding and current row)
else null
end result
from testSuXVI
order by level;

---------25
select * from Row_Nums

go
with evennumber as(
select id, vals,
row_number() over(partition by id order by vals) numberofrow
from Row_Nums)
select id, vals,
case
when numberofrow=1 then(id%2) *2+2
else (id%2)*2+2+numberofrow-1
end as changednumber
from evennumber
order by id, changednumber;

