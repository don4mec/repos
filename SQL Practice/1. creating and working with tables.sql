create database practice1


use practice1



create table tblperson (ID int not null, Name nvarchar(20), Email nvarchar(50), GenderID int)

create table tblgender (ID int primary key, Gender varchar(10))

insert into tblperson values (1, 'jade', 'j@j.com', 2),(2, 'Mary ', 'm@m.com',3),(3,'Maetin','ma@ma.com',1),(4,'Rob','r@r.com',null),
 (5,'Mary','may@my.com',2),(6,'Kristy','k@k.com',null)

insert into tblgender values(1,'Male'),(2,'Female'),(3,'Unknown')

select*from tblperson
select*from tblgender

alter table tblperson
add constraint fk_tblperson_genderid
foreign key (Genderid) references tblgender(id)

insert into tblperson values(7,'ken','k@k.com',4)

alter table tblperson alter column id int not null

alter table tblperson 
add 
primary key (id)

ALTER TABLE  



drop table tblperson

begin transaction
delete from tblgender

rollback tblgender


