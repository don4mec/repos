create table tblemployee (ID int identity , Name nvarchar(30),Gender nvarchar(10),salary int, City varchar(20))

insert into tblemployee values ('tom','M',4000,'London'),('Pam','F',3000,'NewYork'),('John','M',3500,'London'),
('Sam','M',4500,'London'),('Todd','M',2800,'Sydney'),('Ben','M',7000,'NewYork'),('Sara','F',4800,'Sydney'),('Valarie','F',5500,'NewYork'),
('James','M',6500,'London'),('Russell','M',8800,'London')


update tblemployee set Gender= 'Male' where Gender ='m'
update tblemployee set Gender= 'Female' where Gender ='f'

alter table tblemployee drop column city

select*from tblemployee

alter table tblemployee add  DepartmentID int

create table tblDepartment (ID int primary key identity, DepartmentName nvarchar(20),Location varchar(20),DepartmentHead varchar(10))

insert into tblDepartment values ('IT','London','Rick'),('Payroll','Delhi','Ron'),('HR','NewYork','Christie'),('OtherDepartment','Sydney','Cindrella')

select*from tblDepartment
select *from tblemployee

select name, gender,salary,departmentname,location
from tblemployee e
left  join tblDepartment d
on e.departmentid=d.ID

where e.departmentid is null


