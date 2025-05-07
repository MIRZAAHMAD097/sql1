CREATE TABLE Employees19 ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), DepartmentID INT, Salary DECIMAL(10, 2), HireDate DATE );

INSERT INTO Employees19 (EmployeeID, FirstName, LastName, DepartmentID, Salary, HireDate) VALUES (1, 'John', 'Doe', 1, 60000, '2020-01-15'), (2, 'Jane', 'Smith', 2, 70000, '2019-03-22'), (3, 'Emily', 'Johnson', 1, 65000, '2021-05-18'), (4, 'Michael', 'Williams', 3, 80000, '2018-06-30'), (5, 'Chris', 'Jones', 2, 72000, '2022-02-11'), (6, 'Katie', 'Brown', 3, 61000, '2020-12-01'), (7, 'Sarah', 'Davis', 1, 58000, '2023-01-25'), (8, 'David', 'Miller', 2, 75000, '2017-04-17'), (9, 'Laura', 'Wilson', 3, 69000, '2019-08-08'), (10, 'Mark', 'Moore', 1, 62000, '2022-03-05'), (11, 'Lisa', 'Taylor', 2, 73000, '2018-09-10'), (12, 'James', 'Anderson', 3, 72000, '2021-07-15'), (13, 'Nancy', 'Thomas', 1, 64000, '2020-05-30'), (14, 'Robert', 'Jackson', 2, 68000, '2019-11-20'), (15, 'Patricia', 'White', 3, 69000, '2018-10-01'), (16, 'Charles', 'Harris', 1, 55000, '2023-02-28'), (17, 'Jessica', 'Martinez', 2, 70000, '2021-06-20'), (18, 'Daniel', 'Thompson', 3, 67000, '2017-07-14'), (19, 'Matthew', 'Garcia', 1, 64000, '2022-04-25'), (20, 'Danielle', 'Martinez', 2, 71000, '2020-03-12'), (21, 'Paul', 'Robinson', 3, 78000, '2018-05-03'), (22, 'Michelle', 'Clark', 1, 50000, '2023-03-10'), (23, 'Joseph', 'Rodriguez', 2, 74000, '2021-02-09'), (24, 'Angela', 'Lewis', 3, 66000, '2017-08-14'), (25, 'Thomas', 'Lee', 1, 73000, '2022-01-19'), (26, 'Rebecca', 'Walker', 2, 79000, '2019-12-12'), (27, 'Scott', 'Hall', 3, 72000, '2022-06-11'), (28, 'Betty', 'Allen', 1, 52000, '2023-01-28'), (29, 'Andrew', 'Young', 2, 66000, '2021-05-15'), (30, 'Arthur', 'Hernandez', 3, 71000, '2018-09-22'), (31, 'Brittany', 'King', 1, 64000, '2020-10-05'), (32, 'Jacqueline', 'Wright', 2, 70000, '2019-11-29'), (33, 'Kelly', 'Scott', 3, 64000, '2019-08-16'), (34, 'Gary', 'Torres', 1, 68000, '2020-07-13'), (35, 'Sara', 'Nguyen', 2, 71000, '2021-04-24'), (36, 'Albert', 'Hernandez', 3, 75000, '2019-06-20'), (37, 'Samantha', 'Carter', 1, 49000, '2023-01-15'), (38, 'Steve', 'Mitchell', 2, 77000, '2018-12-01'), (39, 'Brandon', 'Perez', 3, 71000, '2020-09-11'), (40, 'Deborah', 'Roberts', 1, 56000, '2019-10-22'), (41, 'Laura', 'Turner', 2, 64000, '2021-05-04'), (42, 'Philip', 'Phillips', 3, 69000, '2018-08-30'), (43, 'Tina', 'Campbell', 1, 62000, '2020-11-07'), (44, 'Greg', 'Parker', 2, 68000, '2022-03-14'), (45, 'Dennis', 'Evans', 3, 71000, '2021-01-01'), (46, 'Rose', 'Edwards', 1, 74000, '2020-09-05'), (47, 'Rachel', 'Collins', 2, 78000, '2018-06-01'), (48, 'Jordan', 'Stewart', 3, 70000, '2021-07-20'), (49, 'Christine', 'Sanchez', 1, 61000, '2019-02-18'), (50, 'Carlos', 'Morris', 2, 90000, '2022-05-27');

CREATE TABLE Departments19 ( DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50), Location VARCHAR(50) );

INSERT INTO Departments19 (DepartmentID, DepartmentName, Location) VALUES (1, 'Sales', 'New York'), (2, 'Engineering', 'San Francisco'), (3, 'Marketing', 'Chicago'), (4, 'Purchasing', 'Los Angeles'), (5, 'Finance', 'Miami');

CREATE TABLE Projects ( ProjectID INT PRIMARY KEY, ProjectName VARCHAR(100), StartDate DATE, EndDate DATE, Budget DECIMAL(10, 2) );

CREATE TABLE Employees19_1 ( EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50), LastName VARCHAR(50), HireDate DATE, Salary DECIMAL(10, 2) );

CREATE TABLE EmployeeProject ( EmployeeProjectID INT PRIMARY KEY, EmployeeID INT, ProjectID INT, Role VARCHAR(50), FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID), FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID) );

INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Budget) VALUES (1, 'Project Alpha', '2020-01-01', '2020-12-31', 100000), (2, 'Project Beta', '2021-01-01', '2021-12-31', 150000), (3, 'Project Gamma', '2022-01-01', '2022-12-31', 200000), (4, 'Project Delta', '2021-06-01', '2022-05-31', 250000), (5, 'Project Epsilon', '2023-01-01', '2023-12-31', 300000);

INSERT INTO Employees19_1 (EmployeeID, FirstName, LastName, HireDate, Salary) VALUES (1, 'John', 'Doe', '2019-01-15', 80000), (2, 'Jane', 'Smith', '2018-03-22', 95000), (3, 'Emily', 'Johnson', '2021-05-18', 70000), (4, 'Michael', 'Williams', '2020-06-30', 60000), (5, 'Chris', 'Jones', '2022-02-11', 85000), (6, 'Sarah', 'Davis', '2020-12-01', 75000), (7, 'David', 'Miller', '2019-04-17', 90000), (8, 'Laura', 'Wilson', '2021-08-08', 70000), (9, 'Robert', 'Clark', '2021-01-01', 72000), (10, 'Michelle', 'Lee', '2022-05-01', 88000);

INSERT INTO EmployeeProject (EmployeeProjectID, EmployeeID, ProjectID, Role) VALUES (1, 1, 1, 'Lead'), (2, 2, 1, 'Member'), (3, 3, 2, 'Lead'), (4, 4, 2, 'Member'), (5, 5, 3, 'Member'), (6, 6, 3, 'Lead'), (7, 7, 4, 'Member'), (8, 8, 4, 'Member'), (9, 9, 5, 'Lead'), (10, 10, 5, 'Member'); 
------------1
select * from Employees19
select employeeid, firstname, lastname, salary
from Employees19
where salary>(select avg(salary) from Employees19)
-------2
select * from Departments19

select departmentname
from Departments19
where DepartmentID=1
and
exists(
select 1
from Departments19
where DepartmentID=1)

--------3
select * from Employees19
select * from Departments19

select employeeid, DepartmentID, firstname, lastname
from Employees19 
where DepartmentID =(
select DepartmentID 
from Employees19
where FirstName= 'rachel' and
LastName='collins')
;
----------4
select employeeid, departmentid, firstname, lastname, hiredate
from Employees19
where DepartmentID=2 
and HireDate>(
select max(hiredate)
from Employees19
where DepartmentID=2
);
----------5
select * from Employees19
select * from Departments19

select firstname, lastname, departmentid, salary
from Employees19 e
where salary>(select avg(salary) from Employees19
where DepartmentID=e.DepartmentID)
;

--------6
select  distinct departmentid,
(select count(*) 
from Employees19 e2
where e2.DepartmentID=e1.departmentid ) employeecount
from Employees19 e1;

----------7
select employeeid, firstname, lastname, salary
from Employees19
where salary=(
select min(salary)
from Employees19);

-----------8
select firstname, lastname, departmentid, salary
from Employees19 e
where DepartmentID in(
select DepartmentID
from Employees19 
group by DepartmentID
having avg(salary)>65000)
order by salary desc;

------------9
select firstname, lastname, departmentid, hiredate
from Employees19
where HireDate>=dateadd(year,-3,(
select max(hiredate)
from employees19))
order by HireDate
;

--------10
select departmentid, firstname, lastname, salary
from Employees19
where DepartmentID in(
select  DepartmentID
from Employees19
where salary>=80000
);



select employeeid, firstname, lastname, salary
from Employees19
where salary>=80000

--------11
select employeeid, firstname, lastname, departmentid, salary
from Employees19 e1
where salary=(
select max(salary)
from Employees19 e2
where e1.DepartmentID=e2.DepartmentID);

---------12
select * from Employees19
select * from Departments19

select e.departmentid, d.departmentname, e.lastname, e.firstname, e.hiredate
from Employees19 e
join Departments19 d on
e.DepartmentID=d.DepartmentID
where HireDate=(
select max(hiredate)
from Employees19 e2
where e.DepartmentID=e2.DepartmentID);

-------13
select departmentid, departmentname, location,
(
select avg(salary)
from Employees19 e
where e.DepartmentID=d.DepartmentID)
from Departments19 d
;

-------14
select employeeid, firstname, lastname, departmentid, salary
from Employees19
where DepartmentID in(
select DepartmentID
from Employees19 e1
where salary=(
select avg(salary)
from Employees19 e2
where e1.DepartmentID=e2.DepartmentID));


---------15
select departmentid
from Employees19
group by DepartmentID
having count(*)<(
select avg(empcount)
from(select departmentid, count(*) empcount
from Employees19
group by DepartmentID) depcount);

select avg(employeecount)
from(
select departmentid, count(*) employeecount
from Employees19
group by DepartmentID) depcount

-------16
select employeeid, firstname, lastname, departmentid, salary
from Employees19
where DepartmentID<>(
select top 1 DepartmentID
from Employees19
group by DepartmentID
order by avg(salary) desc);

--------17
select * from Employees19
select * from Departments19

select departmentid, departmentname
from Departments19 d
where departmentid in(
select DepartmentID
from Employees19 e
where d.DepartmentID=e.DepartmentID)
;

-------18
select d.departmentid, d.departmentname
from Departments19 d
where(
select count(*)
from Employees19 e
where d.DepartmentID=e.DepartmentID
and datediff(year, e.hiredate, (select max(hiredate) from employees19))>3)
>(
select count(*)
from Employees19 e
where (
select count(*)
from Employees19 e
where d.DepartmentID=e.DepartmentID
and datediff(year, e.hiredate, (select max(hiredate) from employees19))<3);
;


SELECT d.DepartmentID, d.DepartmentName
FROM Departments d
WHERE (
    SELECT COUNT(*) 
    FROM Employees19 e
    WHERE e.DepartmentID = d.DepartmentID 
    AND DATEDIFF(YEAR, ISNULL(e.HireDate, GETDATE()), (SELECT MAX(HireDate) FROM Employees19)) >= 3
) > (
    SELECT COUNT(*)
    FROM Employees19 e
    WHERE e.DepartmentID = d.DepartmentID 
    AND DATEDIFF(YEAR, ISNULL(e.HireDate, GETDATE()), (SELECT MAX(HireDate) FROM Employees19)) < 3
);

---------19
select employeeid, firstname, lastname, departmentid
from Employees19
where DepartmentID=(
select top 1 DepartmentID
from Employees19
group by DepartmentID
order by count(*) desc);

-----------20
select departmentid,
(select max(salary) from Employees19 e1
where e1.DepartmentID=e2.DepartmentID)-
(select min(salary) from Employees19 e1
where e1.DepartmentID=e2.DepartmentID) difference
from Employees19 e2
group by DepartmentID
;
select * from Projects
select * from Employees19_1
select * from EmployeeProject
-------21

select projectname
from Projects
where ProjectID not in(
select distinct ProjectID
from EmployeeProject
where role='lead');

--------22
select e.firstname, e.lastname, e.salary
from Employees19_1 e
where e.salary>(select avg(ep_avg.salary)
from EmployeeProject epp
join Employees19_1 ep_avg on
epp.EmployeeID=ep_avg.EmployeeID
where epp.ProjectID in(select ProjectID 
from EmployeeProject
where EmployeeID=e.EmployeeID))
;
------23
select p.projectid, p.projectname
from Projects p
where projectid in(
select ProjectID
from EmployeeProject
group by ProjectID
having count(employeeid)=1);

--------24
select projectid, projectname,
(select max(budget) from Projects ) - budget as difference
from Projects

--------25
select projectid, projectname
from Projects p
where(
select sum(salary)
from Employees19_1 e
join EmployeeProject epp on
e.EmployeeID=epp.EmployeeID
where epp.ProjectID=p.ProjectID
and epp.role='lead')>
(select avg(salary)
from Employees19_1 e
join EmployeeProject epp
on e.EmployeeID=epp.EmployeeID
where epp.Role='lead');







