create table emp
(
eid int,
ename varchar(40),
esalary numeric(10,2),
did int
constraint fkey_dept foreign key (did) references dept3(did)
)

create table dept3
(
did int primary key,
dept_Name varchar(20),
)


select*from emp
select*from dept3

insert into emp values(1,'Sandesh',45000,101),(2,'Rohit',50000,null),(3,'Sujit',70000,102),(4,'Rushi',40000,103),(5,'Sagar',65000,101)

insert into dept3 values(101,'Sales'),(102,'Admin'),(103,'Finance'),(104,'Marketing')

select *
from emp e inner join dept3 d on e.did=d.did

select *
from emp e left join dept3 d on e.did=d.did

select *
from emp e right join dept3 d on e.did=d.did

select *
from emp e full join dept3 d on e.did=d.did

