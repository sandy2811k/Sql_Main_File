create table employee4(
 eid int,
 ename varchar(40),
 salary numeric(12,2),
 did int
 constraint fk_dept foreign key (did) references dept1(did)--Foreign Key
)
----Insert data in employee4 table
insert into employee4 values(1,'Sandesh',45000,100),(2,'Sagar',50000,200),(3,'Sujit',40000,null),4,'Rohit',45000,100),(5,'Ajay',51000,200)

create table dept1(
did int primary key, --Primary key
dname varchar(50),
location varchar(100)
--primary key(did) --> 2nd 
)



----Insert data in dept1 table
insert into dept1 values(100,'Sales','Pune'),(200,'Admin','Mumbai'),(300,'HR','delhi')

--Join
--1)inner Join
select* from employee4 inner join dept1
on employee4.did=dept1.did
--Other type to write
select* from employee4 e inner join dept1 d
on e.did=d.did

--Left Join
select* from employee4 e left join dept1 d
on e.did=d.did

--cross join
select * from employee4 cross join dept1

--To show department name of given employee (Sub Query) 
select dname from dept1 where did=              --> Outer Query
(select did from employee4 where ename='sagar') --> Sub Query

--Find the department for the empolyee 'Rohit'
select d.dname ,e.ename from employee4 e join dept1 d
on e.did=d.did 
where e.ename='Rohit'

--Find the employee who is working in 'Sales' department
select e.ename from employee4 e , dept1 d
where e.did=d.did and d.dname='Sales'

--Find emp whos location is pune & department
select e.ename from employee4 e join  dept1 d
on e.did=d.did 
where location='pune' and dname='hr'


--Find the emp whos salary is more than 25000
select ename ,salary from employee4
where salary>25000

--Find max salary and emp info
select top 1* from employee4 order by salary desc

--Find max salary only
select max(salary) as 'max salary' from Employee4

--Who working in 'admin' department -->name and salary
select e.ename, e.salary from employee4 e 
inner join dept1 d
on e.did=d.did 
where d.dname='admin'

--Find salary whos emp id is 3 
select salary from employee4  where eid=3

--Find ename,salary who is not working in dept 'hr'
select ename,salary  from employee4 e,dept1 d
where e.did=d.did and dname<>'hr'

--Find the emp who has not assingn dept-->(Sujit)
select e.ename from employee4 e left join dept1 d 
on d.did=e.did 
where d.dname is null




--------------------------------------------------------------------------
--Group by
-- display count of emp in each dept
--Summary of dept
--select id,did from employee4
select did,count(eid) as 'count'from employee4
group by did

--Display dept  wise sum salary
select did,sum(salary) from employee4
group by did

-- display dept wise avg salary
select did,avg(salary) from employee4
group by did




select did ,count(eid) as 'Count' from employee4
group by did

select *from employee4
select * from dept1

select did ,sum(salary) from employee4
group by did

-------------------------------------------------------------------------------
select * from EmployeeInfo_Table
select * from EmployeePosition_Table

-------------------------------------------------------------------------------
create proc SP_Emp_select
as begin
select * from EmployeeInfo_Table
return
end

-- call the SP
exec SP_Emp_select
-------------------------------------------
-- with parameters
create proc SP_Emp_Address(@address varchar(10))
as begin
select * from EmployeeInfo_Table where Address=@address
return 
end

-- call the SP
exec SP_Emp_Address
@address='pune'


create proc sp_insert_EmployeeInfo_Table
(
@Emp_Id int,

---------------------------------------------------
-- identity in SQL server
-- increment the id, sr no automatically in the table
-- we dont have to pass explicit value for identity column
-- identity(para1,para2)

--para1 --> initial value
--par2 --> increment by 

create table product
(
id int primary key identity(101,1),
name varchar(20),
price int
)

insert into product values('pencil',20)
insert into product values('Pen',50)
insert into product values('Pendrive',5000)
insert into product values('Mouse',500)

select * from product