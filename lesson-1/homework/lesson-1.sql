SELECT * FROM SYS.databases;

CREATE Database example_db;

USE example_db;

GO
SELECT * FROM example_db.INFORMATION_SCHEMA.TABLES

CREATE TABLE Employees(
Emp_id INT IDENTITY( 1,1) PRIMARY KEY, -- this col is PK and increment automatical
Name VARCHAR(50) NOT NULL, --name requared
Salary DECIMAL(10,2) DEFAULT 0.00, --12345678.90;
)

SELECT * FROM Employees

INSERT INTO Employees ( Name, Salary)
VALUES('John Smith','180.000'),
      ('Mark Gudmonson','210.000');

DELETE FROM Employees WHERE Name='John Smith'
DELETE FROM Employees WHERE Emp_id='3'

UPDATE Employees
SET Salary='300.000'
WHERE Emp_id='5'

ALTER TABLE Employees
MODIFY Name VARCHAR(100)

ALTER TABLE Employees
ADD Department VARCHAR(50)


CREATE TABLE CUSTOMER(
Emp_id INT IDENTITY( 1,1) PRIMARY KEY, -- this col is PK and increment automatical
Name VARCHAR(50) NOT NULL, --name requared
Salary DECIMAL(10,2) DEFAULT 0.00 --12345678.90;
);
drop table CUSTOMER
SELECT * FROM CUSTOMER

ALTER TABLE CUSTOMER
ADD Order_id varchar (50)

ALTER TABLE CUSTOMER
ADD Country varchar (50)

INSERT INTO CUSTOMER( Name, Salary,Order_id, Country)
VALUES('Ole Sulsher','180.000','1','Norway'),
      ('Michael Olise','210.000','2','England');
DROP TABLE CUSTOMER;- DROP FUNKSIYASI butun tableni o'chirib yuboradi, Truncate rowlani o'chirib, jadval strukturasini qoldiradi.




