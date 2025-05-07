select * from item

-------easy task
-------1
select itemid, itemname
from item
where price>(select avg(price) from item)

---------2
select * from staff

select staffid, firstname, lastname,DepartmentID
from staff
where departmentid in(select  departmentid from staff where DepartmentID>10
)


---------3
select * from staff
select * from Departments

select staffid, firstname, lastname, departmentid
from staff s
where salary>(select avg(salary) from staff where DepartmentID=s.DepartmentID) ;

------4
select * from Client
select * from purchase_sx

select clientid, clientname
from Client 
where clientid in(select distinct purchaseid from purchase_sx)

---------5
select * from OrderDetails
select * from purchase_sx;
select purchaseid, purchaseamount, clientid, purchasedate
from purchase_sx p
where exists(
select 1
from orderdetails o
where o.OrderID=p.purchaseID);


---------6
select * from Products_x
select * from OrderDetails

select productid, productname
from Products_x
where ProductID in(
select ProductID from OrderDetails
group by ProductID having sum(quantity)>100);


-----------7
select * from staff
select staffid, firstname, lastname,salary
from staff
where salary>(select avg(salary) from staff)

------8

select vendorid, vendorname
from vendors
where vendorid in(select vendorid from vendors where price <50);


--------9
select * from item

select price
from item
where price=(select  max(price) from item)

-------10
select * from purchase_sx
select purchaseid,purchaseamount
from purchase_sx
where purchaseamount=(select max(purchaseamount) from purchase_sx)

---------11
select * from Client
select * from purchase_sx

select clientid, clientname
from client
where clientid not in(select distinct clientid from purchase_sx
);

---------12
select * from item
select * from Products_x

select productid, categoryid
from Products_x
where CategoryID=(select CategoryID from categories where categoryname='electronics');

---------13
select * from purchase_sx
select purchaseid, itemid,purchaseAmount
from purchase_sx
where purchasedate>(select '2025-01-01')

--------14
select * from purchase_sx
select purchaseid,(
select sum(quantity)
from OrderDetails o
where o.OrderID=p.purchaseid) totalitem
from purchase_sx p;

--------15
select * from staff

select staffid, firstname, lastname, hiredate
from staff
where datediff(year,hiredate,getdate())>5

----------16
select * from staff
select * from Departments_x

select staffid,firstname, lastname, salary
from staff s
where salary>(select avg(salary) from staff
where DepartmentID=s.DepartmentID);


---------17
select * from OrderDetails
select * from purchase_sx

select purchaseid,purchaseamount, itemid
from purchase_sx p
where  exists(select 1    from OrderDetails o
where o.OrderID=p.purchaseID
and p.itemID in (select itemid from item))

--------18
select * from Client
select * from purchase_sx

select clientid, clientname
from client
where clientid in(
select distinct clientid
from purchase_sx
where purchaseDate>=dateadd(day,-30,getdate()));

--------19
select itemid, itemname
from item
where dateadd=(
select min(dateadd)
from item);

--------20
select * from staff
select staffid, firstname, lastname
from staff
where divisionid is null;


-------medium task
-------1
select * from staff
select * from Departments_x

select staffid, firstname, lastname, Salary
from staff s
where DepartmentID in(select distinct departmentid
from staff s2
where s2.Salary>100000
and s2.DepartmentID=s.DepartmentID)


----------2
select * from staff
select staffid, FirstName, lastname, salary, DepartmentID
from staff s
where salary=(select max(salary) from staff s2
where s.DepartmentID=s2.DepartmentID)

-------3
select * from item
select * from Client
select * from OrderDetails
select * from purchase_sx

select clientid, clientname
from client
where clientid in(select distinct clientid
from purchase_sx p
where not exists(select 1 from OrderDetails o
join item i on  o.ProductID=i.itemID
where p.purchaseID=o.OrderID
and i.Price>200));

---------4
select * from item
select * from OrderDetails

select itemid, itemname
from item i
where (select sum(quantity)
from OrderDetails o
where o.ProductID=i.itemID)>
(select avg(sum(quantity)) from orderdetails
group by ProductID);

-------5
select * from Client
select * from purchase_sx

select clientid, clientname
from Client
where ClientID in(select ClientID
from purchase_sx
group by clientid
having count(purchaseid)>3);

--------6
select * from Client
select * from OrderDetails
select * from purchase_sx
select clientid, clientname,
(select sum(quantity)
from OrderDetails o
join purchase_sx p on
p.purchaseID=o.OrderDetailID
where p.clientid=c.clientid
and p.purchaseDate>=dateadd(day,-30,getdate())) as orderlast30day
from Client c

--------7
select * from staff
select staffid, firstname, lastname,DepartmentID, Salary
from staff s
where salary>(select avg(salary) from staff
where DepartmentID=s.DepartmentID)

--------------8
select * from item
select * from purchase_sx

select itemid, itemname
from item i
where itemid not in(select distinct itemid  from purchase_sx p
where i.itemID=p.itemID)


--------9
select vendorid, vendorname
from vendors
where vendorid in(select distinct vendorid
from item
where price>(select avg(price) from item));

-------10
select * from item
select * from OrderDetails
select * from purchase_sx

select itemid,
(select sum(quantity)
from OrderDetails o
join purchase_sx p on
o.OrderDetailID=p.purchaseID
where o.ProductID=i.itemid
and p.purchaseDate>=dateadd(year,-1,getdate())) totalsalelastyear
from item i
---------11
select staffid, staffname, age
from staff s1
where age>(select avg(age) from staff s2);

---------12
select * from item
select itemid, itemname
from item
where price>(select avg(price)from item);

---------13
select * from Client
select * from purchase_sx
select * from OrderDetails
select * from item

select clientid, clientname
from client
where ClientID in (
select distinct clientid
from purchase_sx p
join purchaseDetails o on
p.purchaseID=o.purchaseID
where o.itemID in (
select itemid
from item i 
join categories c on 
i.categoryid=c.categoryid
where c.categoryname='home and kitchen'));


------14
select itemid, itemname
from item
where quantity>(select avg(quantity) from item);

------15
select * from Departments_x
select * from staff

select staffid, firstname, lastname, departmentid
from staff s1
where DepartmentID in (
select distinct departmentid
from staff s2
where s1.DepartmentID=s2.DepartmentID
and s2.bonus is not null);

------16
select staffid, lastname, firstname,salary
from staff
where salary>(select PERCENTILE_CONT(0.9)
within group (order by salary) over()
from staff
);

------17
select * from Departments_x
select * from staff

select departmentid, departmentname
from Departments_x d
where (
select count(*)
from staff s
where d.DepartmentID=s.DepartmentID) =(
select max(staffnumber)
from(select count(*) staffnumber
from staff
group by DepartmentID) departmentnumber)

-----18
select * from purchase_sx
select purchaseid,purchaseAmount
from purchase_sx
where purchaseAmount=(select max(purchaseamount)
from purchase_sx
);

-------19
select * from staff

select staffid, firstname, lastname,salary
from staff s1
where salary>(
select avg(salary) from staff s2
where s1.staffID=s2.staffID)
and hiredate<=dateadd(year,-5,getdate());

------20
select * from Client
select * from purchase_sx

select clientid, clientname
from client
where ClientID not in(
select distinct p.clientid
from purchase_sx p
join OrderDetails o on
p.purchaseID=o.OrderID
join item i on 
i.itemID=o.ProductID
where i.Price>100
);


--------difficult tasks
---------1
select * from staff
select staffid, firstname, lastname, salary,DepartmentID
from staff s1
where salary>(select avg(salary) from staff s2
where s1.DepartmentID=s2.DepartmentID)
and salary<(select max(salary)
from staff s3
where s3.DepartmentID=s1.DepartmentID);

----------2
select * from item
select * from OrderDetails
select * from purchase_sx

select distinct itemid, itemname
from item i
where itemid in(
select pd.itemid
from purchasedetails pd
join purchase_sx p on pd.purchaseid=p.purchaseID
where p.clientid in(
select clientid
from purchase_sx
group by clientid
having count(purchaseid)>5
));

----------3
select * from staff

select staffid, firstname,lastname, age
from staff s1
where age>(select avg(age) from staff)
and Salary>(select avg(salary) from staff);

---------4
select * from staff
select * from Departments_x

select staffid, firstname, lastname,salary
from staff s
where DepartmentID in (select DepartmentID
from staff 
where Salary>100000
group by DepartmentID
having count(*)>5
)
;

--------5
select * from purchase_sx
select * from item
select itemid, itemname
from item
where itemid not in (
select itemid
from purchase_sx
where purchaseDate>=dateadd(year,-1,getdate()))
;

--------6
select * from item
select * from purchase_sx
select * from client

select distinct clientid
from purchase_sx p 
where clientid in(
select clientid
from purchase_sx
join item i on
p.itemID=i.itemID
group by clientid
having count(distinct i.categoryid)>=2
);

-------7
select * from staff
select * from Departments_x

select staffid, firstname, lastname, salary
from staff s1
where salary>(select avg(salary) from staff s2
where s1.DepartmentID=s2.DepartmentID);

-------8
select * from item

select itemid, itemname, price 
from item 
where price>=(select PERCENTILE_CONT(0.9) within group (order by price) over()
from item
);

----------9
SELECT staffID,FirstName, DepartmentID, salary
FROM Staff s1
WHERE salary > (
    SELECT PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY salary)
    FROM Staff s2
    WHERE s1.DepartmentID = s2.DepartmentID
);

--------10
select * from staff

select staffid, firstname, lastname
from staff s1
where staffID not in
(select distinct staffid
from bonus
where bonusdate>=dateadd(month,-6,GETDATE()));

--------11
select * from item
select * from Orders

select itemid, itemname
from item i
where(select count(orderid)
from Orders o
where i.itemID=o.itemID)>(select avg(order_count)
from (
select itemid, count(orderid) order_count
from orders
group by OrderID) itemcount);

-------12
select * from Client
select * from purchase_sx

select clientid
from item
where itemID in(select itemid from item
where price>(
select avg(price) from item))

--------13
select * from staff
select * from Departments_x

select departmentid, departmentname
from Departments_x
where DepartmentID in(
select top 1 DepartmentID
from(select s.departmentid, avg(s.salary) avgsalary
from staff s
group by s.DepartmentID) departmentsalary
order by avgsalary);

----------14
select * from Client
select * from purchase_sx

select itemid, itemname
from item
where itemid in(
select distinct p.itemid
from purchase_sx p
where p.clientid in(
select clientid
from purchase_sx
group by clientid
having count(purchaseid)>1    ));

--------15
select * from Sales_x
select staffid, firstname, lastname,  departmentid
from staff 
where DepartmentID in(
select DepartmentID
from staff
group by DepartmentID
order by sum(saleamount) desc);

--------16
select staffid, FirstName, lastname, salary
from staff
WHERE salary > (
    SELECT PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY salary) 
    OVER ()
    FROM Staff
);
----17
select * from item
select * from Client
select * from purchase_sx

select itemid, itemname
from item
where itemID not in(
select distinct itemid
from purchase_sx
where purchaseDate>=dateadd(month,-1,getdate()));

-------18

select * from purchase_sx

select staffid, firstname, lastname, departmentid
from staff
where DepartmentID=(
select DepartmentID
from(select DepartmentID, sum(salesamount) totalpurchase
from sales
group by DepartmentID
order by totalpurchase desc) topdepartment);

-------19
select * from client
select * from purchase_sx

select clientid, clientname
from client
where ClientID not in (
select distinct purchaseid
from purchase_sx
where purchaseDate>=dateadd(month, -1, getdate()))
and ClientID in(
select ClientID
from purchase_sx
group by clientid
having sum(purchaseamount)<10  );

------20
select * from staff
select * from purchase_sx

select staffid, FirstName, LastName, hiredate
from staff
where datediff(year, hiredate, getdate())>10
and staffid in(
select distinct p.staffid
from purchase_sx p
join item i on
i.itemID=p.itemID
where i.Price>1000);













