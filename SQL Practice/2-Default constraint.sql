alter table tblperson 
add constraint DF_tblperson_genderid
default 3 for genderid

insert into tblperson (id,name,email)values (8,'hen', 'h@h.com')

select*from tblperson

update tblperson set genderid=3 where id=4

update tblperson set genderid=3 where id=6



