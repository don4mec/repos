use practice
select*from tblemployee

select e.name as employeename, m.name as managername
from tblemployee e
left join tblemployee m
on e.ManagerID=m.EmployeeID

