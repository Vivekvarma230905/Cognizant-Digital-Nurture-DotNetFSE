-- CREATE TABLE
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(50)
);

-- INSERT RECORDS
INSERT INTO Employee VALUES
(101,'Rahul','HR',35000,24,'Delhi'),
(102,'Priya','IT',60000,26,'Hyderabad'),
(103,'Amit','IT',50000,25,'Chennai'),
(104,'Sneha','Sales',45000,28,'Mumbai'),
(105,'Ravi','HR',35000,29,'Delhi');

-- DISPLAY ALL RECORDS
SELECT * FROM Employee;

-- DISPLAY SPECIFIC COLUMNS
SELECT emp_name, salary FROM Employee;

-- EMPLOYEES WITH SALARY > 50000
SELECT * FROM Employee
WHERE salary > 50000;

-- SORT BY SALARY DESCENDING
SELECT * FROM Employee
ORDER BY salary DESC;

-- MAXIMUM SALARY
SELECT MAX(salary) AS HighestSalary
FROM Employee;

-- MINIMUM SALARY
SELECT MIN(salary) AS LowestSalary
FROM Employee;

-- AVERAGE SALARY
SELECT AVG(salary) AS AverageSalary
FROM Employee;

-- COUNT EMPLOYEES
SELECT COUNT(*) AS TotalEmployees
FROM Employee;

-- EMPLOYEES IN IT DEPARTMENT
SELECT * FROM Employee
WHERE department = 'IT';

-- GROUP BY DEPARTMENT
SELECT department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY department;

-- TOTAL SALARY DEPARTMENT WISE
SELECT department, SUM(salary) AS TotalSalary
FROM Employee
GROUP BY department;

-- DEPARTMENTS HAVING MORE THAN ONE EMPLOYEE
SELECT department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY department
HAVING COUNT(*) > 1;

-- SECOND HIGHEST SALARY
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);

-- THIRD HIGHEST SALARY
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- DUPLICATE SALARIES
SELECT salary, COUNT(*) AS CountSalary
FROM Employee
GROUP BY salary
HAVING COUNT(*) > 1;

-- UPDATE SALARY
UPDATE Employee
SET salary = salary + 5000
WHERE department = 'HR';

-- DELETE EMPLOYEE
DELETE FROM Employee
WHERE emp_id = 105;

-- NAMES STARTING WITH R
SELECT * FROM Employee
WHERE emp_name LIKE 'R%';

-- NAMES ENDING WITH A
SELECT * FROM Employee
WHERE emp_name LIKE '%a';

-- AGE BETWEEN 24 AND 28
SELECT * FROM Employee
WHERE age BETWEEN 24 AND 28;

-- HIGHEST SALARY IN EACH DEPARTMENT
SELECT department, MAX(salary) AS HighestSalary
FROM Employee
GROUP BY department;

-- EMPLOYEES ABOVE AVERAGE SALARY
SELECT *
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);

-- EVEN EMPLOYEE IDS
SELECT *
FROM Employee
WHERE emp_id % 2 = 0;

-- ODD EMPLOYEE IDS
SELECT *
FROM Employee
WHERE emp_id % 2 = 1;

-- TOP 3 HIGHEST SALARIES
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 3;

-- CREATE DEPARTMENT TABLE
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- ALTER EMPLOYEE TABLE
ALTER TABLE Employee
ADD department_id INT;

-- INNER JOIN
SELECT e.emp_id,
       e.emp_name,
       d.department_name
FROM Employee e
INNER JOIN Department d
ON e.department_id = d.department_id;

-- LEFT JOIN
SELECT e.emp_id,
       e.emp_name,
       d.department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- RIGHT JOIN
SELECT e.emp_id,
       e.emp_name,
       d.department_name
FROM Employee e
RIGHT JOIN Department d
ON e.department_id = d.department_id;

-- DISTINCT DEPARTMENTS
SELECT DISTINCT department
FROM Employee;

-- IN OPERATOR
SELECT *
FROM Employee
WHERE department IN ('HR','IT');

-- NOT IN OPERATOR
SELECT *
FROM Employee
WHERE department NOT IN ('HR');

-- IS NULL
SELECT *
FROM Employee
WHERE city IS NULL;

-- IS NOT NULL
SELECT *
FROM Employee
WHERE city IS NOT NULL;

-- DELETE ALL RECORDS
TRUNCATE TABLE Employee;

-- DROP TABLE
DROP TABLE Employee;