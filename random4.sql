use companydb;
SELECT departmentid, SUM(salary) AS total_salary
FROM employees
GROUP BY departmentid;
SELECT departmentid, AVG(salary) AS average_salary
FROM employees
GROUP BY departmentid;

