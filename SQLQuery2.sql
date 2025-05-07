USE example_db

CREATE TABLE Employees_ID(
Emp_id int IDENTITY PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(50),
State VARCHAR(50)
)

SELECT * FROM Employees_ID

BULK INSERT Employees_ID
FROM 'C:\Users\User\Documents\SQL Server Management Studio\Employees_id'
WITH(FIRSTROW=2,
FIELDTERMINATOR=',',
ROWTERMINATOR='/n');


CREATE TABLE ProductID(
ProductID INT IDENTITY PRIMARY KEY, 
ProductName VARCHAR(50), 
Price DECIMAL(10,2)
)
DROP TABLE ProductID

SELECT * FROM ProductID

INSERT INTO ProductID(ProductName, Price)
VALUES ('Table', '200'),
('Chair', '23'),
('Furniture', '120');


CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);SELECT * FROM Persons

INSERT INTO Persons(LastName, FirstName, Age)
VALUES('Mirzaahmad','Miraxmedov','null');

not null berilganda har doim data berish kere, aks holda error beradi.

CREATE TABLE Name_ID(
    ID int IDENTITY PRIMARY KEY  ,
    LastName varchar(50), --can be NULL
    FirstName varchar(50),
    Age int
);
DROP TABLE Name_ID
CREATE TABLE Name_ID(
    ID int IDENTITY PRIMARY KEY  ,
    LastName varchar(50), --can be NULL
    FirstName varchar(50),
    Age int
);

SELECT *FROM Name_ID

INSERT INTO Name_ID(LastName,FirstName,Age)
VALUES('NULL','Mirzaahmad','27')
NULL funksiya berilganda, rowga data yozmasa boladi.


CREATE TABLE ProductID(
ProductID INT IDENTITY PRIMARY KEY, 
ProductName VARCHAR(50) UNIQUE, -unique funksiyasi ishlatilgani hisobiga bir xil nomli tovar qoshib bolmaydi
Price DECIMAL(10,2)
)
SELECT *FROM ProductID

INSERT INTO ProductID(ProductName, Price)
VALUES ('Table', '200'),
('Chair', '23'),
('Furniture', '120'),
('Table','150');


CREATE TABLE Categories(
CategoryID INT PRIMARY KEY,
Category_name VARCHAR(50) UNIQUE
)
SELECT * FROM Categories

IDENTITY column tablega yengi data kiritilganda avtomatik yaratiladigan ustun va PRIMARY KEY bolib keladi.
