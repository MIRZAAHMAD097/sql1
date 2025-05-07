---hw12

----easy task
---1

select ascii('A') ---65

----2
SELECT LEN('Hello World') AS StringLength;

-----3
SELECT REVERSE('openai') AS reversed_string;

----4
SELECT 'HI!' + SPACE(5) + 'NiceToSeeYou'

---5
SELECT TRIM('     team     ') AS TrimmedString;

----6
select upper('sql') 

----7 
select substring('tea pot', 1, 3) as extractstring;

------8
SELECT SUBSTRING('technology', LEN('technology') - 3, 4) AS LastFourChars;

SELECT RIGHT('Technology', 4) AS LastFourCharacters;

------9
select SUBSTRING('programming',3,4) as extractstring;

----10
select concat('the', 'best', 'country') ;

-----11
select replace('apple orange', 'orange', 'pie')

-----12
SELECT CHARINDEX('learn', 'Learn SQL with LearnSQL')

-----13
select charindex('er', 'server')

-----14
select value 
from string_split('apple,orange,banana',',')

---15
select power(2,3);

----16
select sqrt(16)

-----17

select getdate() as currentdate

----18
select GETUTCDATE() as currentutcdate

----19
select day('2025-02-03') as month

--------20
select dateadd(day,10,'2025-02-03') as dateadd 

-----medium level
-----1
select char(65) as character

----2
select ltrim('  trueman')
select rtrim('trueman   ')
----ltrim chap tomondagi bo'shliqni, rtrim o'ng tomondagi bo'shliqni olib tashlaydi.

----3
select charindex('SQL', 'Learn SQL basics')

----4
select CONCAT_WS(',','SQL','Server')

----5
select stuff('test',1,4,'exam');

-----6
select square(7);

----7
select SUBSTRING('International', 1,5)
select left('International',5)

----8
select right('database',2) as extractsrting
select substring('database',7,2);

----9
select patindex('%n%', 'Learn SQL')

-----10
select datediff(day,'2025-01-01','2025-02-03')

----11
select month('2025-02-03')

---12
select datepart(year,'2025-02-03')

----13
Select Convert(Time, GetDate())

----14
SELECT SYSDATETIME() AS SysDateTime;

----15
select dateadd(week,1,'2025-02-03')

---16
----difference between getdate() and getutcdate is timezone

-----17
select abs(-15) absolutevalue

------18
select ceiling(4.57) --=5

--------19
select CURRENT_TIMESTAMP

----20
select datename(weekday, '2025-02-03')


----hard task

----1
select reverse('SQL Server')

----2
select string_agg(city,',') as c
from CUSTOMER

----3
select case
when charindex('SQL', columnname1) >0 and charindex('Server',columnname1)
then 'contain'
else 'doesnt contain'
end as result
from table1

-----4
select power(5,3)

----5
select value as fruit
from string_split('apple;orange;banana',';')


-----6
select trim(' SQL ')

----7
SELECT datediff(hour, '2025.04.09 12:00:00', '2025.04.09 18:00:00')

----8
select (datepart(year, '2025-02-03') - datepart(year, '2023-05-01')) *12 +
(datepart(month,'2025-02-03') - datepart(month, '2023-05-01')) month

-----9
 
select charindex('LQS',reverse('Learn SQL Server'))

----10

select value as fruit
from string_split('apple,orange,banana',',')

----11

select  datediff(day,'2025-01-01', getdate())

---12

select left('Data Science', 4)

---13

select ceiling(sqrt(225))

---14
CONCAT_WS('|', 'apple', 'banana');

---15
select patindex('%[0-9]%','abc123xyz')

----16
select CHARINDEX('SQL', 'SQL Server SQL', 5)

----17
select datepart(year, getdate())

----18
select dateadd(day,-100,getdate())

----19
select datename(WEEKDAY, '2025-02-03')

---20
select power(5,2)