create database practice;

use practice;
create table employes (
employeeid int primary key,
firstname varchar(50),
lastname varchar(50),
departmentid int
);

create table departments(
departmentid int primary key,
departmentname varchar(50),
email varchar(100)
);

insert into employes (employeeid, firstname, lastname, departmentid) values
(1, 'Jane', 'Atieno', 101),
(2, 'Denis', 'Otieno', 102),
(3, 'Peter', 'Onyango', 103),
(4, 'Calvin', 'Odhiambo', 103);

select * from employes;
select departmentid,employeeid from employes;

update employes set departmentid=103 where employeeid=2;
select departmentid,employeeid from employes;

update employes set departmentid=101 where employeeid=4;
select departmentid,employeeid from employes;

select departmentid from employes where employeeid=4;

delete from employes where employeeid=1;
select departmentid,employeeid from employes;
select * from employes;

insert into employes (employeeid, firstname, lastname, departmentid) values
(5, 'Joyce', 'John', 105);
select * from employes;

alter table employes add email varchar(100);
select * from employes;

alter table employes drop email;
select * from employes;

select departmentID, count(*) as employeeCount
from employes
group by departmentID;

alter table employes add column salary int;
update employes set salary = 1000 where employeeid=2;
update employes set salary = 2000 where employeeid=3;
update employes set salary = 3000 where employeeid=4;
update employes set salary = 4000 where employeeid=5;

select * from employes;

select sum(salary) as totalSalary
from employes;

select avg(salary) as averageSalary
from employes;

select min(salary) as highestSalary
from employes;

select DepartmentID, max(salary) as highestSalary
from employes
group by DepartmentID;


select departmentID, count(*) as employeecount
from employes
group by DepartmentID
having count(*) >= 2;

select * from employes
where firstname like '_C%';