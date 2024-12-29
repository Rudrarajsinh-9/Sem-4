--1. Write a function to print "hello world".
create or alter function FN_HELLOWORLD()
returns varchar(50)
as
begin
return 'Hello World'
end
select dbo.FN_HELLOWORLD()

--2. Write a function which returns addition of two numbers.
create or alter function FN_ADDTION(@n1 int,@n2 int)
returns int
as
begin
declare @ans int
set @ans = @n1+@n2
return @ans
end
select dbo.FN_ADDTION(5,6)

--3. Write a function to check whether the given number is ODD or EVEN
create or alter function FN_ODDEVEN(@n1 int)
returns varchar(50)
as
begin
declare @ans varchar(50)
if @n1 % 2 = 0
set @ans = 'Even'
else
set @ans = 'Odd'
return @ans
end
select dbo.FN_ODDEVEN(5)

--4. Write a function which returns a table with details of a person whose first name starts with B.
create or alter function FN_TABLERETURNS()
returns table
as
return(select * from Person where FirstName like '%B')

select * from dbo.FN_TABLERETURNS()

--5. Write a function which returns a table with unique first names from the person table.
create or alter function FN_UNIQUENAME()
returns table
as
return(select distinct(FirstName) from Person)

select * from dbo.FN_UNIQUENAME()

---6. Write a function to print number from 1 to N. (Using while loop) 
CREATE FUNCTION FUN_Numbers(@N INT)
RETURNS @Num TABLE (Num INT)
AS
BEGIN
    DECLARE @Counter INT = 1;

    WHILE @Counter <= @N
    BEGIN
        INSERT INTO @Num (Num)
        VALUES (@Counter);

        SET @Counter = @Counter + 1; 
    END

    RETURN;
END;

SELECT * FROM FUN_Numbers(10);---7. Write a function to find the factorial of a given integer.
CREATE FUNCTION FUN_Factorial(@N INT)
RETURNS BIGINT
AS
BEGIN
    IF @N < 0
        RETURN NULL; 

    DECLARE @Factorial BIGINT = 1; 
    DECLARE @Counter INT = 1; 

    WHILE @Counter <= @N
    BEGIN
        SET @Factorial = @Factorial * @Counter; 
        SET @Counter = @Counter + 1; 
    END

    RETURN @Factorial;
END;

SELECT dbo.FUN_Factorial(5) AS Factorial;

-------------------------------------------------------------------------Part-B------------------------------------------------------------------------

--8. Write a function to compare two integers and return the comparison result. (Using Case statement)
CREATE or alter FUNCTION CompareIntegers(@a INT, @b INT)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @result VARCHAR(50);

    SET @result = CASE 
                    WHEN @a > @b THEN CONCAT(@a, ' is greater than ', @b)
                    WHEN @a < @b THEN CONCAT(@a, ' is less than ', @b)
                    ELSE CONCAT(@a, ' is equal to ', @b)
                  END;

    RETURN @result;
END;

SELECT dbo.CompareIntegers(5, 3);