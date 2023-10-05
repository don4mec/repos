use practice

select*from tblemployee

create proc spgetemployees
as
begin
 select name,gender from tblemployee
 end

 spgetemployees

 create proc spgetemployeesByGenderAndDepartment
 @gender nvarchar(50),
 @departmentId int
 as
 begin
 select name,gender from tblemployee where gender=@gender and DepartmentID=@departmentId
 end

 spgetemployeesByGenderAndDepartment 'male',1

 sp_helptext spgetemployeesByGenderAndDepartment

 create proc spgetemployeecountByGender 
 @gender nvarchar(20),
 @Employeecount int output
 as
 begin
 select @Employeecount= count(id)
from tblemployee
where gender= @gender
end

declare @Employeetotal int
exec spgetemployeecountByGender 'female', @Employeetotal output
if (@Employeetotal is null)
print '@Employeetotal is null'
else print '@Employeetotal is not null'






CREATE FUNCTION Age(@DOB Date)
RETURNS INT
AS 
BEGIN
DECLARE @Age INT
SET @Age = DATEDIFF(YEAR, @DOB, GETDATE()) - CASE WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR 
(MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE())) THEN 1 ELSE 0 END 
RETURN @Age
END


CREATE Index IX_tblEmployee_Salary ON tblEmployee (SALARY ASC)


Create View vWEmployeesByDepartment
as 
Select Id, Name, Salary, Gender, DeptName
from tblEmployee join tblDepartment on tblEmployee.DepartmentId = tblDepartment.DeptId