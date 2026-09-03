create database office_management;
use office_management;
create table departments( department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100));
    
    CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT
);
ALTER TABLE employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

insert into departments(department_name,location)
value('HR','Aachen'),('Information Technology', 'Berlin'),
    ('Finance', 'Paris'),
    ('Marketing', 'Madrid'),
    ('Operations', 'Amsterdam');
    SELECT * FROM departments;
    DELETE FROM departments
WHERE department_id = 2;
    SELECT * FROM departments;
INSERT INTO employees
(name, email, gender, date_of_birth, salary, hire_date, department_id)
VALUES
('John Smith', 'john.smith@company.com', 'Male', '1995-04-12', 55000.00, '2022-06-15', 3);
    SELECT * FROM employees;


SELECT * FROM departments;
INSERT INTO employees
(name, email, gender, date_of_birth, salary, hire_date, department_id)
VALUES
('Sarah Johnson', 'sarah.johnson@company.com', 'Female', '1997-08-21', 62000.00, '2021-03-10', 1),
('Michael Brown', 'michael.brown@company.com', 'Male', '1992-11-05', 72000.00, '2020-09-01', 3),
('Emily Davis', 'emily.davis@company.com', 'Female', '1999-01-17', 48000.00, '2023-01-20', 4),
('David Wilson', 'david.wilson@company.com', 'Male', '1994-06-30', 58000.00, '2022-11-14', 5),
('Sophia Taylor', 'sophia.taylor@company.com', 'Female', '1996-03-25', 68000.00, '2021-07-05', 3);
    SELECT * FROM employees;
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;
SELECT employees.name, employees.salary, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id; 
SELECT e.name, e.salary, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

SELECT *
FROM employees
WHERE gender = 'Female';

SELECT *
FROM employees
WHERE salary > 60000;

SELECT *
FROM employees
WHERE gender = 'Female'
AND salary > 60000;

SELECT *
FROM employees
WHERE department_id IN (1, 2, 3);

SELECT *
FROM employees
WHERE department_id = 1
OR department_id = 2;

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 70000;

select name,salary
from employees
where salary>60000;

select name,date_of_birth
from employees
order by date_of_birth asc;

select name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
UPDATE employees
SET salary = 65000
WHERE employee_id = 8;
select * from employees;

SELECT COUNT(*)
FROM employees;

SELECT AVG(salary)
FROM employees;

SELECT MAX(salary)
FROM employees;

SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id;

select department_id,sum(salary)
from employees
group by department_id;

SELECT department_id, COUNT(*)
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;

SELECT
    e.employee_id,
    e.name,
    e.email,
    e.salary,
    d.department_name,
    d.location
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;
    
    SELECT
    d.department_name,
    AVG(e.salary) AS average_salary
FROM departments d
INNER JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

SELECT
    e.employee_id,
    e.name,
    e.email,
    e.gender,
    e.date_of_birth,
    e.salary,
    e.hire_date,
    d.department_name,
    d.location
FROM employees e
LEFT JOIN departments d
    ON e.department_id = d.department_id
ORDER BY e.employee_id;