create table tblemployee (EmployeeID int, Name nvarchar(20),ManagerID int)
insert into tblemployee values(1,'Mike',3),(2,'Rob',1),(3,'Todd',Null),(4,'Ben',1),(5,'Sam',1)

select e.Name as Employee, Isnull(M.name, 'NO MANAGER') as Manager
from tblemployee E
left join tblemployee M
on E.ManagerID=M.EmployeeID


select E.name as employee, case when M.name is null then 'No Manager' else M.name end as manager
from tblemployee E
left join tblemployee M
on e.ManagerID=m.EmployeeID

select e.Name as Employee , coalesce(M.name, 'No Manager') as manager
from tblemployee E
left join tblemployee M
on e.ManagerID=m.EmployeeID

select*from employee


create table employee (ID int, FirstName varchar(10), MiddleName varchar(10), LastName varchar(10))

select coalesce (firstname,middlename,lastname) as Name from employee

