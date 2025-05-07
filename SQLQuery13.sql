---hw 13
---Beginner Level

---1
select substring('DATABASE',1,4)

----2
select charindex('SQL', 'I love SQL Server')

----3
select replace('Hello World','World','SQL' )

----4
select len('Microsoft SQL Server')

----5
select right('Database',3)

----6
select LEN('apple') - LEN(REPLACE('apple', 'a', '')),
    LEN('banana') - LEN(REPLACE('banana', 'a', '')) AS CountInBanana,
    LEN('grape') - LEN(REPLACE('grape', 'a', '')) AS CountInGrape;

	----7
select substring('abcdefg',6,2)
select stuff('abcdefg',1,5,' ')

----8
select substring('SQL is powerful', 4,3) 

select substring('I love databases',2,5)

----9
select round(15.6789,2)

----10
select abs(-345.67)

------intermediate level

-----11
select substring('ABCdefGHI',4,3)

---12
select replace('Microsoft','Mic','XXX')
select stuff('Microsoft',1,3,'XXX')

----13

select charindex(' ','SQL Server 2025',1)

---14
select concat_ws(',', FirstName, LastName)

---15
select substring('The database is very efficient',14,2)

----16
SELECT 
    SUBSTRING('INV1234', PATINDEX('%[0-9]%', 'INV1234'), LEN('INV1234') - PATINDEX('%[0-9]%', 'INV1234') + 1) AS ExtractedNumber1,
    SUBSTRING('ORD5678', PATINDEX('%[0-9]%', 'ORD5678'), LEN('ORD5678') - PATINDEX('%[0-9]%', 'ORD5678') + 1) AS ExtractedNumber2;
	;
	select PATINDEX('%[0-9]%','inv1234')

	-----17
select round(99.5,1,0)

----18
select datediff(day,'2025-01-01','2025-06-10')

----19
select datename(month, '2025-06-10')

----20
select datename(week,'2025-04-22');

----advanced level

--21
select substring('user@gmail.com',5,1),
SUBSTRING('admin@company.org',6,1)

----22

select right('experience',1)

-----23
select floor(rand()*(500-100+1)+100)

---24
select format(9876543,'#,###,###')

SELECT FORMAT(9876543, 'N0') 

----25
CREATE TABLE Customers_zero (FullName VARCHAR(100)); 
INSERT INTO Customers_zero
VALUES ('John Doe'), 
	('Jane Smith');


select * from Customers_zero
select SUBSTRING(fullname,1,4)
from Customers_zero

-----26
select replace('SQL Server is great',' ','-')

----27
select format(42,'00000')

---28
select len('SQL is fast and efficient')

---29
select SUBSTRING('Error: Connection failed',7,100)

----30
select datediff(minute,'08:15:00','09:45:00')

