
set statistics time on

 --It returens CPU time and elaspsed time. elasped time means total time taken by the query to excute including waiting time.
 set statistics io on 
 --to find which query is expensive by using logical read and physical reads
--it returns scan count, logical reads , physical reads, read ahead reads...etc

---scan count: Its number of seeks/scans started from root node to reach leaf node in any direction to retrive the data
--- if scan count=0, if the index is used a unique index or clustered index on primary key.

--logical reads:Number of pages read from data cache

--physical reads: number of pages read from disk


--read ahead raeds: 
  --When a data is not in buffer cache so all reads will be physical reads , 
  --requesting row by row data from disk is very expensive, so here new mechanism called as read ahead reads

 --it anticipates bunch of rows that might be requested by the query
 --so it place pages into buffer even before requested by the query.
 
select * from [Production].[ProductInventory]

set statistics io off

set statistics time off

select *from [Person].[Address]


select *from [Person].[Address]

select *from [Person].[Address] where AddressID=5
 
 select *from [Person].[Address]   where AddressID>=1 and AddressID<=5

 select *from [Person].[Address]  where AddressID in (1,2,3,4,5)

 dbcc dropcleanbuffers with no_infomsgs

  dbcc traceon(652)

