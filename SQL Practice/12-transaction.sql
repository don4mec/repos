create table trans (ID int, AccountName nvarchar(20),Balance int)

insert into trans values (1,'Mark',1000)
insert trans values (2,'Mary',1000)

select*from trans

begin try 
begin transaction 
update trans set Balance=Balance-100 where id=1
update trans set Balance= Balance+100 where id=2
commit transaction 
print 'Transaction committed'
end try
begin catch
rollback transaction 
print'transaction Rolled back'
end catch

