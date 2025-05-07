homework5
---easy task

select ProductID,ProductName as Name, Price, Color, Category----task 1
from Product

SELECT * FROM CUSTOMER as Client----task 2

select ProductName from Product----task 3
union
select Name from Customer
order by ProductName

select ProductID----task 4
from Product
intersect
select Emp_id
from Customer

select ProductName----task 5
from Product
union all
select Order_id
from CUSTOMER
order by ProductName

SELECT distinct Name, Country----task 6
from CUSTOMER

select Price,-----task 7
case
when Price>100 then 'High'
else 'Low'
end
from Product

SELECT * FROM Employee----task 8

select count(EmployeeID), Country, Department
from Employee
where Department  in ('Housekeeping','HR', 'Front office', 'Back office', 'Security', 'Executive chef')
group by Country, Department


	
select * from Product----task 9
select count(ProductID) Category
from Product
group by Category


select Price,----task 10
 iif(Price>100, 'Yes', 'No')
from Product