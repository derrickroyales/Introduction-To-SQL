use companydb;
select * from employees;
select FirstName, LastName from Employees;
select * from departments;
select FirstName, LastName from Employees where departmentID = 102;
update Employees set LastName='Ndegwa' where employeeID=1;
update Projects set ProjectName = 'Project Z' where projectID=1005;
select LastName from Employees where employeeID=1;
delete from Employees where employeeID=9;
delete from projects where projectID=9;
insert into Employees(employeeID, FirstName, LastName, DepartmentID, HireDate) values(
11, 'Kiplagat', 'Kosgey', 104, '2024-01-01');
insert into Employees(employeeID, FirstName, LastName, DepartmentID, HireDate) values(
13, 'Royales', 'Derrick', 104, '2024-01-01');
-- alter database companydb modify name=CompanyDatabase;
alter table employees add email varchar(100);
select * from employees;

alter table employees drop column email;
select* from employees;

select departmentID, count(*) as employeeCount
from employees
group by departmentID

