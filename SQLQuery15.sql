 CREATE TABLE #Cart1 ( Item VARCHAR(100) PRIMARY KEY ); 

CREATE TABLE #Cart2 ( Item VARCHAR(100) PRIMARY KEY ); 

INSERT INTO #Cart1 (Item) VALUES ('Sugar'),('Bread'),('Juice'),('Soda'),('Flour'); 

INSERT INTO #Cart2 (Item) VALUES ('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');  CREATE TABLE # ( CustomerID INTEGER, [Type] VARCHAR(100), PhoneNumber VARCHAR(12) NOT NULL, PRIMARY KEY (CustomerID, [Type]) ); 

CREATE TABLE #ProcessLog (
    WorkFlow VARCHAR(100), 
    ExecutionDate DATE, 
    PRIMARY KEY (WorkFlow, ExecutionDate)
);

INSERT INTO #ProcessLog (WorkFlow, ExecutionDate) 
VALUES 
    ('Alpha', '2018-06-01'),
    ('Alpha', '2018-06-14'),
    ('Alpha', '2018-06-15'),
    ('Bravo', '2018-06-01'),
    ('Bravo', '2018-06-02'),
    ('Bravo', '2018-06-19'),
    ('Charlie', '2018-06-01'),
    ('Charlie', '2018-06-15'),
    ('Charlie', '2018-06-30');

	CREATE TABLE Inventory ( InventoryDate DATE PRIMARY KEY, QuantityAdjustment INTEGER NOT NULL ); 

INSERT INTO Inventory (InventoryDate, QuantityAdjustment) VALUES ('7/1/2018',100),('7/2/2018',75),('7/3/2018',-150), ('7/4/2018',50),('7/5/2018',-75);
CREATE TABLE #PlayerScores ( PlayerA INTEGER, PlayerB INTEGER, Score INTEGER NOT NULL, PRIMARY KEY (PlayerA, PlayerB) ); 

INSERT INTO #PlayerScores (PlayerA, PlayerB, Score) VALUES (1001,2002,150),(3003,4004,15),(4004,3003,125);

CREATE TABLE #BatchStarts ( Batch CHAR(1), BatchStart INTEGER, PRIMARY KEY (Batch, BatchStart) ); 

CREATE TABLE #BatchLines ( Batch CHAR(1), Line INTEGER, Syntax VARCHAR(MAX), PRIMARY KEY (Batch, Line) ); 

INSERT INTO #BatchStarts (Batch, BatchStart) VALUES ('A', 1), ('A', 5); 

INSERT INTO #BatchLines (Batch, Line, Syntax) VALUES ('A', 1, 'SELECT *'), ('A', 2, 'FROM Account;'), ('A', 3, 'GO'), ('A', 4, ''), ('A', 5, 'TRUNCATE TABLE Accounts;'), ('A', 6, 'GO'); 

CREATE TABLE Sales5( [Year] INTEGER NOT NULL, Amount INTEGER NOT NULL ); 

INSERT INTO Sales5([Year], Amount) VALUES (YEAR(GETDATE()),352645), (YEAR(DATEADD(YEAR,-1,GETDATE())),165565), (YEAR(DATEADD(YEAR,-1,GETDATE())),254654), (YEAR(DATEADD(YEAR,-2,GETDATE())),159521), (YEAR(DATEADD(YEAR,-2,GETDATE())),251696), (YEAR(DATEADD(YEAR,-3,GETDATE())),111894); 

CREATE TABLE Groupings ( StepNumber INTEGER PRIMARY KEY, TestCase VARCHAR(100) NOT NULL, [Status] VARCHAR(100) NOT NULL ); 

INSERT INTO Groupings (StepNumber, TestCase, [Status]) VALUES (1,'Test Case 1','Passed'), (2,'Test Case 2','Passed'), (3,'Test Case 3','Passed'), (4,'Test Case 4','Passed'), (5,'Test Case 5','Failed'), (6,'Test Case 6','Failed'), (7,'Test Case 7','Failed'), (8,'Test Case 8','Failed'), (9,'Test Case 9','Failed'), (10,'Test Case 10','Passed'), (11,'Test Case 11','Passed'), (12,'Test Case 12','Passed'); 

CREATE TABLE #Spouses ( PrimaryID VARCHAR(100), SpouseID VARCHAR(100), PRIMARY KEY (PrimaryID, SpouseID) ); 

INSERT INTO #Spouses (PrimaryID, SpouseID) VALUES ('Pat','Charlie'),('Jordan','Casey'), ('Ashley','Dee'),('Charlie','Pat'), ('Casey','Jordan'),('Dee','Ashley'); 

CREATE TABLE #Strings ( QuoteId INTEGER IDENTITY(1,1) PRIMARY KEY, String VARCHAR(100) NOT NULL ); 

INSERT INTO #Strings (String) VALUES ('SELECT EmpID FROM Employees;'),('SELECT * FROM Transactions;'); 

CREATE TABLE WorkflowSteps ( StepID INTEGER PRIMARY KEY, Workflow VARCHAR(50), [Status] VARCHAR(50) ); 

INSERT INTO WorkflowSteps (StepID, Workflow, [Status]) VALUES (1, 'Alpha', 'Open'), (2, 'Alpha', 'Open'), (3, 'Alpha', 'Inactive'), (4, 'Alpha', 'Open'), (5, 'Bravo', 'Closed'), (6, 'Bravo', 'Closed'), (7, 'Bravo', 'Open'), (8, 'Bravo', 'Inactive'); 

CREATE TABLE #BowlingResults ( GameID INTEGER, Bowler VARCHAR(50), Score INTEGER, PRIMARY KEY (GameID, Bowler) ); 

INSERT INTO #BowlingResults (GameID, Bowler, Score) VALUES (1, 'John', 167), (1, 'Susan', 139), (1, 'Ralph', 95), (1, 'Mary', 90), (2, 'Susan', 187), (2, 'John', 155), (2, 'Dennis', 100), (2, 'Anthony', 78); 

CREATE TABLE Boxes ( Box CHAR(1), [Length] INTEGER, Width INTEGER, Height INTEGER ); 

INSERT INTO Boxes (Box, [Length], Width, Height) VALUES ('A', 10, 25, 15), ('B', 15, 10, 25), ('C', 10, 15, 25), ('D', 20, 30, 30), ('E', 30, 30, 20); 

CREATE TABLE lag ( BusinessEntityID INT ,SalesYear INT ,CurrentQuota DECIMAL(20,4) ) 

INSERT INTO lag SELECT 275 , 2005 , '367000.00' UNION ALL SELECT 275 , 2005 , '556000.00' UNION ALL SELECT 275 , 2006 , '502000.00' UNION ALL SELECT 275 , 2006 , '550000.00' UNION ALL SELECT 275 , 2006 , '1429000.00' UNION ALL SELECT 275 , 2006 , '1324000.00'


 CREATE TABLE [Movie] (

[MName] [varchar] (10) NULL, [AName] [varchar] (10) NULL, [Roles] [varchar] (10) NULL )



--Insert data in the table

INSERT INTO Movie(MName,AName,Roles) SELECT 'A','Amitabh','Actor' UNION ALL SELECT 'A','Vinod','Villan' UNION ALL SELECT 'B','Amitabh','Actor' UNION ALL SELECT 'B','Vinod','Actor' UNION ALL SELECT 'D','Amitabh','Actor' UNION ALL SELECT 'E','Vinod','Actor'

CREATE TABLE NthHighest ( Name varchar(5) NOT NULL, Salary int NOT NULL )

 INSERT INTO NthHighest(Name, Salary) VALUES ('e5', 45000), ('e3', 30000), ('e2', 49000), ('e4', 36600), ('e1', 58000)

CREATE TABLE dbo.AlternateMaleFemale ( ID INT ,NAME VARCHAR(10) ,GENDER VARCHAR(1) ) 

 INSERT INTO dbo.AlternateMaleFemale(ID,NAME,GENDER) VALUES (1,'Neeraj','M'), (2,'Mayank','M'), (3,'Pawan','M'), (4,'Gopal','M'), (5,'Sandeep','M'), (6,'Isha','F'), (7,'Sugandha','F'), (8,'kritika','F')
 ---------easy task
 ---------1

 select * from #Cart1
 select * from #Cart2
 select c1.item, c2.item
 from #Cart1 c1
 full outer join #Cart2 c2
 on c1.Item=c2.Item

 -----2
 select * from #ProcessLog
 go
 create function fn.avgdays(@workflow varchar(100))
 returns float
 as
 begin 
 declare @avgdays float;
 with execution_d as(
 select executiondate, lag(executiondate) over(order by executiondate) pre_exe
 from #ProcessLog
 where WorkFlow=@workflow
 )
 select @avgdays=avg(datediff(day,pre_exe,executiondate))
 from execution_d
 where pre_exe is not null
 return @avgdays
 end;
 ---------3
 select * from Movie;
go
create function fn.movieactors(@actor1 varchar(100), @actor2 varchar(100))
 returns table
 as 
 return 
 select mname,aname
 from movie
 where (
 select mname,aname
 from movie
 where movie.MName=Movie.MName
 and AName=@actor1)
 and (
 select MName,AName
 from Movie
 where Movie.MName=Movie.MName
 and AName=@actor2
 );



 create table #phonedirectory(
 customerid int ,
 [type] varchar (100),
 phonenumber varchar(100))
 
 INSERT INTO #phonedirectory (CustomerID, [Type], PhoneNumber) VALUES (1001,'Cellular','555-897-5421'), (1001,'Work','555-897-6542'), (1001,'Home','555-698-9874'), (2002,'Cellular','555-963-6544'), (2002,'Work','555-812-9856'), (3003,'Cellular','555-987-6541'); 

 select * from #phonedirectory

 ---------4
 go
 CREATE FUNCTION PhoneNumbers(@CustomerID INT)
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @PhoneNumbers VARCHAR(MAX);

    SELECT @PhoneNumbers = 
        CONCAT(
            COALESCE(MAX(CASE WHEN Type = 'Cellular' THEN PhoneNumber END), 'N/A'), ', ',
            COALESCE(MAX(CASE WHEN Type = 'Work' THEN PhoneNumber END), 'N/A'), ', ',
            COALESCE(MAX(CASE WHEN Type = 'Home' THEN PhoneNumber END), 'N/A')
        )
    FROM 
        #PhoneDirectory
    WHERE 
        CustomerID = @CustomerID;

    RETURN @PhoneNumbers;
END;

--------5
DECLARE @n INT = 100; -- Replace 100 with your desired value of n

WITH NumbersCTE AS (
    SELECT 1 AS Number
    UNION ALL
    SELECT Number + 1
    FROM NumbersCTE
    WHERE Number + 1 <= @n
)
SELECT Number
FROM NumbersCTE
WHERE Number % 9 = 0;
select * from #BatchLines
select * from #BatchStarts
---------6
SELECT 
    b.Batch,
    b.batchStart,
    l.Line AS EndLine
FROM 
    #BatchStarts b
JOIN 
    #BatchLines l ON b.Batch = l.Batch

with batchcte as(
select batch, line endline, lead(line) over (
partition by batch order by line) end_line
from #BatchLines)
select batch,endline, end_line
from batchcte

--------7
select * from Inventory

create function dbo.getbalance(@inventorydate date)
returns int
as 
begin 
declare @quantityadjustment int;
select  @quantityadjustment=SUM(quantityadjustment)
from Inventory
where InventoryDate<=@inventorydate
return @quantityadjustment;
end;
select dbo.getbalance('2018')
-------8
CREATE FUNCTION dbo.GetNthHighestSalary(@N INT)
RETURNS INT
AS
BEGIN
    DECLARE @NthHighestSalary INT;

    SELECT 
        @NthHighestSalary = Salary
    FROM (
        SELECT 
            Salary, 
            DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
        FROM 
            NthHighest
    ) RankedSalaries
    WHERE 
        Rank = @N;

    RETURN @NthHighestSalary;
END;

----------9
select * from Sales5
create function dbo.earlysale(@year int)
returns int
as
begin 
declare @totalsales int;
select @totalsales=sum(amount)
from Sales5
where year(year)=@year
return @totalsales
end;
select dbo.earlysale(2024)
----------medium task
-----1
select * from Boxes
CREATE FUNCTION dbo.AreBoxesEqual(@BoxID1 CHAR(1), @BoxID2 CHAR(1))
RETURNS BIT
AS
BEGIN
    DECLARE @IsEqual BIT;

    SELECT @IsEqual = 
        CASE 
            WHEN b1.Length = b2.Length 
             AND b1.Width = b2.Width 
             AND b1.Height = b2.Height THEN 1
            ELSE 0
        END
    FROM Boxes b1
    JOIN Boxes b2 ON b1.Box = @BoxID1 AND b2.Box = @BoxID2;

    RETURN @IsEqual;
END;

--------2
with numbercte as(
select 1 as number
union all
select 
case when number*2<100 then number*2
else number+1
end as number
from numbercte
where number<100)
select number
from numbercte
order by number

---------3
select * from WorkflowSteps
create function workstatus(@stepid int,@workflowid int)
returns int
as begin 
declare @uniqestatus int;
select @uniqestatus=count(distinct status)
from WorkflowSteps
where Workflow=@workflowid
and StepID=@stepid;
return @uniqestatus;
end

----------4
select * from AlternateMaleFemale

create function gender(@id int,@gender int)
returns int
as
begin
declare @alternatenumber int;
select @alternatenumber=row_number() over(partition by gender order by id)
from AlternateMaleFemale
where id=@id and
gender=@gender
return @alternatenumber;
end


-------5
select * from Groupings

with numberstep as(
select stepnumber,status, ROW_NUMBER()over (