Create database Exam;
use exam;
create table students (
Firstname varchar(50),
Secondname varchar(50),
Lastname varchar(50),
Marks int
);

create table lectures (
LecId int primary key,
Firstname varchar(50),
Secondname varchar(50),
Lastname varchar(50),
Marks int
);

create table Assignments (
AssignmentId int primary key,
AssignmentName varchar(50),
LecId int,

foreign key(LecId) references lectures(lecId)

);

select * from Assignments;


insert into students (Firstname, Secondname, Lastname, Marks) values
('Derrick','Royales','Onyango',70),
('Rick','Nales','Onyango',70),
('Deck','Ales','Onyango',70);

select assignmentid from assignments;

update students set Firstname='Otieno' where Secondname='Royales';

set sql_safe_updates = 0;
set sql_safe_updates = 1;

create index idx_lastname on students(Lastname);

select * from students;

use companydb;
select departmentid, count(*) as TotalCount
from employees
group by departmentid;

SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID
HAVING EmployeeCount > 2;

select FirstName, LastName, Salary,
case departmentid
   when 101 then 'Cloudy'
   when 102 then 'Misty'
   else 'gay'
end as departmentmood
from employees;

select departmentid,
sum(case
  when departmentid=101 then salary
  else 0 
end) as TotalSalary
 from employees
 group by departmentid;

select employeeid, lastname, hiredate,
coalesce(phonenumber,'No phone Number') as theirContact
from employees;

select 
employeeid, 
firstname, 
lastname,
dense_rank() over (partition by departmentid order by lastname) as rowNumber
from employees;

