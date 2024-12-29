CREATE DATABASE CSE_4B_487

CREATE TABLE Department (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Designation (
 DesignationID INT PRIMARY KEY,
 DesignationName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Person (
 PersonID INT PRIMARY KEY IDENTITY(101,1),
 FirstName VARCHAR(100) NOT NULL,
 LastName VARCHAR(100) NOT NULL,
 Salary DECIMAL(8, 2) NOT NULL,
 JoiningDate DATETIME NOT NULL,
 DepartmentID INT NULL,
 DesignationID INT NULL,
 FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
 FOREIGN KEY (DesignationID) REFERENCES Designation(DesignationID)
);

--1 Department, Designation & Person Table’s INSERT, UPDATE & DELETE Procedures.
CREATE OR ALTER PROCEDURE PR_DEPARTMENT_INSERT
@DeptID int,
@DeptName varchar(100)
AS
BEGIN
INSERT INTO Department(DepartmentID,DepartmentName) VALUES (@DeptID,@DeptName)
END

CREATE OR ALTER PROCEDURE PR_DEPARTMENT_UPDATE
@DID INT,
@DName VARCHAR(100)
AS
BEGIN
	UPDATE DEPARTMENT
	SET DepartmentName=@DName WHERE DepartmentID=@DID
END

CREATE OR ALTER PROCEDURE PR_DEPARTMENT_DELETE
@DID INT
AS
BEGIN
 DELETE FROM DEPARTMENT WHERE DepartmentID=@DID
END

CREATE OR ALTER PROCEDURE PR_DESIGNATION_INSERT
@DID INT,
@DNAME VARCHAR(100)
AS
BEGIN
	INSERT INTO Designation(DesignationID,DesignationName) VALUES (@DID,@DNAME)
END

CREATE OR ALTER PROCEDURE PR_DESIGNATION_UPDATE
@DID INT,
@DNAME VARCHAR(100)
AS
BEGIN
	UPDATE Designation
	SET DesignationName=@DNAME
	WHERE DesignationID=@DID
END

CREATE OR ALTER PROCEDURE PR_DESIGNATION_DELETE
@DID INT
AS
BEGIN
	DELETE FROM Designation WHERE DesignationID=@DID
END

CREATE OR ALTER PROCEDURE PR_PERSON_INSERT
@FName varchar(100),
@LName varchar(100),
@Salary Decimal(8,2),
@JoiningDate datetime,
@DeptID int,
@DesigID int
AS
BEGIN
	INSERT INTO PERSON(FirstName,LastName,Salary,JoiningDate,DepartmentID,DesignationID) VALUES (@FName,@LName,@Salary,@JoiningDate,@DeptID,@DesigID)
END

CREATE OR ALTER PROCEDURE PR_PERSON_UPDATE
@PersonID INT,
@FName varchar(100),
@LName varchar(100),
@Salary Decimal(8,2),
@JoiningDate datetime,
@DeptID int,
@DesigID int
AS
BEGIN
	UPDATE PERSON
	SET FirstName=@FName,LastName=@LName,Salary=@Salary,JoiningDate=@JoiningDate,DepartmentID=@DeptID,DesignationID=@DesigID
	WHERE PersonID=@PersonID
END

CREATE OR ALTER PROCEDURE PR_PERSON_DELETE
@PersonID INT
AS
BEGIN
	DELETE FROM PERSON WHERE PersonID=@PersonID
END

PR_DEPARTMENT_INSERT 1,'Admin'
PR_DEPARTMENT_INSERT 2,'IT'
PR_DEPARTMENT_INSERT 3,'HR'
PR_DEPARTMENT_INSERT 4,'Account'

SELECT * from Department

PR_DESIGNATION_INSERT 11,'Jobber'
PR_DESIGNATION_INSERT 12,'Welder'
PR_DESIGNATION_INSERT 13,'Clerk'
PR_DESIGNATION_INSERT 14,'Manager'
PR_DESIGNATION_INSERT 15,'CEO'

select * from Designation

PR_PERSON_INSERT 'Rahul','Anshu',56000,'1990-01-01',1,12
PR_PERSON_INSERT 'Hardik','Hinsu',18000,'1990-09-25',2,11
PR_PERSON_INSERT 'Bhavin','Kamani',25000,'1991-05-14',NULL,11
PR_PERSON_INSERT 'Bhoomi','Patel',39000,'2014-02-20',1,13
PR_PERSON_INSERT 'Rohit','Rajgor',17000,'1990-07-23',2,15
PR_PERSON_INSERT 'Priya','Mehta',25000,'1990-10-18',2,NULL
PR_PERSON_INSERT 'Neha','Trivedi',18000,'2014-02-20',3,15

SELECT * FROM PERSON

--2 Department, Designation & Person Table’s SELECTBYPRIMARYKEY

CREATE OR ALTER PROCEDURE PR_DEPARTMENT_SELECTBYPRIMARYKEY
@DID INT
AS
BEGIN
	SELECT * FROM Department WHERE DepartmentID=@DID
END

CREATE OR ALTER PROCEDURE PR_DESIGNATION_SELECTBYPRIMARYKEY
@DID INT
AS
BEGIN
	SELECT * FROM Designation WHERE DesignationID=@DID
END

CREATE OR ALTER PROCEDURE PR_PERSON_SELECTBYPRIMARYKEY
@PID INT
AS
BEGIN
	SELECT * FROM Person WHERE PersonID=@PID
END

--3. Department, Designation & Person Table’s (If foreign key is available then do write join and takecolumns on select list)
CREATE OR ALTER PROCEDURE PR_PERSON_JOIN
AS
BEGIN
	SELECT * FROM PERSON AS P JOIN DEPARTMENT AS DEP ON P.DepartmentID=DEP.DepartmentID JOIN DESIGNATION AS desi ON p.designationID=desi.designationID
END

--4. Create a Procedure that shows details of the first 3 persons.
CREATE OR ALTER PROCEDURE PR_PERSON_FIRST_THREE
AS
BEGIN
	SELECT TOP 3 * FROM PERSON
END

-------------------------------------------------------------------Part-B------------------------------------------------------------------------------

--5. Create a Procedure that takes the department name as input and returns a table with all workers working in that department.
CREATE OR ALTER PROCEDURE PR_DEPARTMENT_NAME
@DeptName varchar(100)
AS
BEGIN
	SELECT * FROM PERSON AS p JOIN DEPARTMENT AS d ON p.departmentID=d.departmentID WHERE d.DepartmentName=@DeptName
END

--6. Create Procedure that takes department name & designation name as input and returns a table with worker’s first name, salary, joining date & department name.CREATE OR ALTER PROCEDURE PR_PERSON_DISPLAY
@DeptName varchar(100),
@DesName varchar(100)
AS
BEGIN
	SELECT FirstName,Salary,JoiningDate,DepartmentName FROM PERSON AS p join Department AS dep on p.DepartmentID=dep.DepartmentID join Designation AS desi on p.DesignationID=desi.DesignationID
	WHERE dep.departmentName=@DeptName AND desi.designationName=@DesName
END

--7. Create a Procedure that takes the first name as an input parameter and display all the details of the worker with their department & designation name.CREATE OR ALTER PROCEDURE PR_PERSON_FIRSTNAME
@FName varchar(100)
AS
BEGIN
	SELECT * FROM Person AS p join department as dep on p.departmentID=dep.departmentID join designation as desi on p.designationID=desi.designationID
	where p.FirstName=@FName
END

--8. Create Procedure which displays department wise maximum, minimum & total salaries.
CREATE OR ALTER PROCEDURE PR_DEPARTMENT_MAX_MIN_SUM
AS
BEGIN
	SELECT dep.DepartmentName,MAX(p.SALARY),MIN(p.SALARY),SUM(p.SALARY) FROM Department AS dep JOIN Person AS p on p.DepartmentID=dep.DepartmentID
	group by dep.DepartmentName
END

--9 Create Procedure which displays designation wise average & total salaries.
CREATE OR ALTER PROCEDURE PR_DESIGNATION_AVG_SUM
AS
BEGIN
	SELECT desi.DesignationName,AVG(p.salary),SUM(p.salary) FROM PERSON AS P JOIN DESIGNATION AS DESI ON P.DESIGNATIONID=DESI.DESIGNATIONID
	GROUP BY desi.DesignationName
END

------------------------------------------------------------Part-c-----------------------------------------------------------------------

--10. Create Procedure that Accepts Department Name and Returns Person Count.
CREATE OR ALTER PROCEDURE PR_PERSON_COUNT
@DeptName varchar(100)
AS
BEGIN
	SELECT COUNT(p.PERSONID) FROM PERSON AS p JOIN Department AS dept on p.DepartmentID=dept.DepartmentID WHERE DepartmentName=@DeptName
END

