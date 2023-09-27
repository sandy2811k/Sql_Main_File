--------------Give manager to emoloyee using self join-------
--Tables used in (Employee1)

select name
from sys.tables

--Add managerid column
alter table employee1 add managerid int

--Update id
update Employee1 set managerid=10 where eid in(9,8,7)
update Employee1 set managerid=6 where eid in(5,4,3)
update Employee1 set managerid=2 where eid in(1)
select * from Employee1

select e1.ename'Employee',e2.ename as 'Manager'
from Employee1 e1,Employee1 e2
where e1.managerid=e2.eid




