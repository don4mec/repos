
create table tblemployee(ID int primary key, [name] nvarchar(20))

insert tblemployee values (2,'john'),(1,'harry'),(5,'hen'),(4,'ben')

select*from tblemployee

use AdventureWorks2019
go


select*from [Person].[Address]

 --Table scans, Clustered index scan , clustered index seek, non clustered index scan and non clustered index seek
 
 
 --table scan: it reads each end every row in a table and it has no index

 drop table address_temp


 select *into address_temp
 from [Person].[Address]

 sp_helpindex address_temp

 drop index address_temp.IX_ADDRESS_TEMP_CITY

 select*from address_temp 
 


 select*from address_temp where City='boston'


 
 --clustered index scan:if a table has a clustered index then it scans table as clustered index scan when you are not going to 
  --use that column in where cluse

  create  clustered index IX_ADDRESS_TEMP_CITY on address_temp(city)

select*from address_temp 

--clustered index seek: if a table has a clustered index and where clause using that column , then it is clustered index seek

select*from address_temp where City='boston'

--non clustered index scan: when we a craete non clustered index column  on a table and we are calling only that column.

drop index address_temp .IX_ADDRESS_TEMP_CITY 

create nonclustered index address_temp on address_temp(city)

select city from address_temp

--non clustered index seek : when we a create nonclusered index column on a table and we using where clause on that column only

select city from address_temp
 where city='boston'


 --suppose if you call all the columns in the table , 

select * from address_temp
 where city='boston'

--RID LOOKUP and Key lookup 

--lookup: it means , the required columns of the query in not in the  nonclustered index itself, 
--it look for base table table to retrive the data

--Rid look up: if base table doesnt have a clustered index , then it is rid look up



select * from address_temp
 where city='boston'

 --key look up: if base table table have a clustered index and non clustered index both, then below case gives key look up

 select * from address_temp


 create clustered index IX_address_temp_addressID on address_temp (addressid)

select * from address_temp
 where city='boston'

 --To slove the look up cost , we can create a covering index

 select addressline1,addressline2,city, postalcode 
 from address_temp
 where city='bosten'

sp_helpindex address_temp

drop index address_temp.address_temp
drop index address_temp. IX_address_temp_addressID

create nonclustered index NIX_address_temp on address_temp (city) include (addressline1,addressline2, postalcode)

select addressline1,addressline2,city, postalcode 
 from address_temp
 where city='bosten'



 --nested loops 
      --when one joining table is small and other one will be large, and consider small has inner table and large one is outer 
	   --inner table should have index on joining column
  
select*from [Production].[Product]

 select*from [Production].[WorkOrder]

 select *into workorder_temp
 from [Production].[WorkOrder]

 select top 100 *into product_temp
 from [Production].[Product]

 sp_helpindex workorder_temp

 drop index workorder_temp.IX_WORKORDER_PRODID

 
  create clustered index IX_WORKORDER_PRODID on workorder_temp ( productid)


 select p.Name, w.*
 from workorder_temp as w
 join product_temp as p
on p.ProductID=w.ProductID


--merge join
     --both the tables are large and both the tables have index on joining column

		 sp_helpindex workorder_temp

		 sp_helpindex [Production].[WorkOrder]


	 create clustered index IX_WORKORDER_PRODID on workorder_temp ( productid)

	create clustered index IX_work_productid on [Production].[WorkOrder] (productid)


 select *from [Production].[WorkOrderRouting]

 select*into workorderrouting 
 from [Production].[WorkOrderRouting]

 create clustered index IX_workorderrouting on workorderrouting (productid)

 select w.*
 from workorder_temp as w
 join workorderrouting as r
 on w.ProductID = r.ProductID


 --hash join
 one of the join column doesnt have index, and data not in sorted oredr
