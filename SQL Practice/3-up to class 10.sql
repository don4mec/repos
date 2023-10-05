use practice

alter table tblperson add  age int

alter table tblperson
add constraint CK_tblperson_age
check(age>0 and age<150)

select*from tblperson

update tblperson set age = 25 where id =1

update tblperson set age = 149 where id =2

alter table tblperson add  new_id int identity 
select*from tblperson

select IDENT_CURRENT()

select SCOPE_IDENTITY()

insert tblperson values(9,'ben', 'b@b.com',2,100)

alter table tblperson 
add constraint UQ_tblperson_name unique (name)

select @@IDENTITY

update tblperson set name= 'mar' where  id = 2

