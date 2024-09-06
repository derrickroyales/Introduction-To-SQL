use companydb;
SELECT departmentid, GROUP_CONCAT(firstname SEPARATOR ', ')
FROM employees 
GROUP BY departmentid;

SELECT departmentid, VARIANCE(salary)
FROM employees 
GROUP BY departmentid;

SELECT departmentid
FROM employees 
WHERE departmentid = 102
UNION 
SELECT departmentid 
FROM employees 
WHERE departmentid = 103;

SELECT * 
FROM employees 
WHERE firstname NOT LIKE 'J%';

SELECT * 
FROM employees 
ORDER BY salary DESC 
LIMIT 5;

