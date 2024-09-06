use companydb;
create table product (
productid int,
productname varchar(50),
price int,
discount varchar(50)
);

drop table product;

select * from simba;

select * from product;

SELECT DepartmentName,
(SELECT COUNT(*)
FROM Employees
WHERE Employees.DepartmentID = Departments.DepartmentID) AS EmployeeCount
FROM Departments;




