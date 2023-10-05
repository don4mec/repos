create table StudentSource (ID int, [Name] nvarchar(20))

insert into StudentSource values (1,'Mike')
insert into StudentSource values (2, 'Sara')

create table StudentTarget (ID int, [Name] nvarchar(20))

insert into StudentTarget values (1,'Mike M')
insert into StudentTarget values (2, 'John')

select*from StudentSource
select*from StudentTarget

merge studenttarget as T
using studentsource as s
on t.id=s.id
when matched then 
update set t.name=s.name
when not matched by target then
insert (id,name) values (s.id,s.name)
when not matched by source then 
delete;

