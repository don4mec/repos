create table tblindiacustomers (Id int, Name varchar(10), Email nvarchar(20))
create table tblukcustomers (ID int,name varchar (10), Email nvarchar(20))

insert into tblindiacustomers values (1,'Raj','R@r.com'),(2,'Sam','S@s.com')

insert into tblukcustomers values (1, 'Ben','B@b.com'),(2,'Sam','S@s.com')

select*from tblindiacustomers
union all
select*from tblukcustomers

order by Name
