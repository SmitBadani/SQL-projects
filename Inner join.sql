CREATE DATABASE employee_management;

USE employee_management;

SELECT * FROM employe;

SELECT * FROM department;

ALTER TABLE department RENAME COLUMN ï»¿dept_id TO dept_id;

ALTER TABLE employe RENAME COLUMN ï»¿emp_id TO emp_id;


-- Q1.
-- Write an SQL query to display:
-- Emp_Name
-- Department

SELECT e.Emp_name, d.Department
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id;



-- Q2.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department

SELECT e.Emp_id, e.emp_name , d.department
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id;



-- Q3.
-- Write an SQL query to display:
-- Emp_Name
-- Salary
-- Department

SELECT e.emp_name , e.Salary , d.department
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id;



-- Q4.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show only employees whose Salary is greater than 60000.

SELECT e.emp_name , d.department, e.Salary
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE e.Salary >60000;



-- Q5.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show only employees who belong to the IT department.

SELECT e.emp_name , d.department 
FROM employe e
INNER JOIN department d 
ON e.dept_id = d.dept_id 
WHERE d.department = "IT";



-- Q6.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Sort the result by Salary in descending order

SELECT e.emp_name , d.department , e.Salary 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY e.Salary DESC;



-- Q7.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show only employees whose Department is HR or Finance.

SELECT e.emp_name , d.department
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department = 'HR' OR d.department = 'Finance';



-- Q8.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Sort the result by Emp_Name in ascending order.

SELECT e.emp_name , d.department 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY e.emp_name ASC;



-- Q9.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Salary
-- Show only employees whose Salary is between 50000 and 70000.

SELECT d.department, e.emp_name , e.Salary 
FROM employe e
INNER JOIN department d
ON d.dept_id = e.dept_id 
WHERE e.Salary BETWEEN 50000 AND 70000;



-- Q10.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show only employees who belong to HR, IT, or Finance.

SELECT e.emp_id, e.Emp_name, d.department, e.Salary
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IN ('HR', 'IT', 'Finance');



-- Q11.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Show only employees whose Salary is less than 50000.

SELECT e.Emp_name, d.department, e.Salary 
FROM employe e 
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary < 50000;



-- Q12.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show employees whose Department is Sales or Marketing.

SELECT e.Emp_name, d.department 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IN ('Sales', 'Marketing');




-- Q13.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Show only employees whose Salary is greater than or equal to 55000.

SELECT e.Emp_name, d.department, e.Salary 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary >= 55000;



-- Q14.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Sort the result by Department (A–Z).

SELECT d.department, e.Emp_name 
FROM employe e 
INNER JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY d.department ASC;



-- Q15.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Show only employees whose Salary is NOT between 50000 and 70000.

SELECT e.Emp_name, d.department, e.Salary 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary NOT BETWEEN 50000 AND 70000;



-- Q16.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show only employees whose Department is Support.

SELECT e.Emp_name, d.department 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE d.department = 'Support';



-- Q17.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Sort the result by:
-- Department (A–Z)
-- Salary (Highest to Lowest)

SELECT e.Emp_name, d.department, e.Salary
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY d.department ASC , e.Salary DESC;



-- Q18.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show employees whose Salary is greater than 50000 and Department is IT.

SELECT e.Emp_name, d.department , e.Salary
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary > 50000 AND d.department = 'IT';



-- Q19.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show employees whose Department is not HR.

SELECT e.emp_id, e.Emp_name, d.department, e.Salary 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id
WHERE d.department != 'HR';



-- Q20. ⭐ (Interview Level)
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show employees who:
-- belong to Finance, IT, Sales, or HR
-- have Salary greater than 50000
-- Sort the result by:
-- Department (A–Z)
-- Salary (Highest to Lowest)

SELECT e.emp_id, e.Emp_name, d.department, e.Salary 
FROM employe e
INNER JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IN ('Finance', 'IT', 'Sales', 'HR') AND e.Salary > 50000 ORDER BY d.department ASC, e.Salary DESC;



-- Q11.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Use LEFT JOIN.

SELECT e.Emp_name, d.department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id;



-- Q12.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Show all employees, even if they are not assigned to any department.

SELECT e.emp_id, e.Emp_name, d.department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id;



-- Q13.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show only employees who do not have any department assigned.

SELECT e.Emp_name, d.department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IS NULL;



-- Q14.
-- Write an SQL query to display:
-- Emp_Name
-- Salary
-- Department
-- Show all employees and sort the result by Salary (Highest to Lowest).

SELECT e.Emp_name, e.Salary, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY e.Salary DESC;



-- Q15.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Show employees whose department record does not exist.

SELECT e.emp_id, e.Emp_name, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IS NULL;



-- Q5.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Replace NULL Department with 'Not Assigned'.

SELECT e.Emp_name, COALESCE(d.department, 'NOT ASSIGNED') AS Department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id;



-- Q17.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Sort the result by Department (A–Z).

SELECT d.department, e.Emp_name 
FROM employe e
LEFT JOIN department d
ON d.dept_id = e.dept_id
ORDER BY d.department ASC;



-- Q18.
-- Write an SQL query to display:
-- Emp_Name
-- Salary
-- Department
-- Show employees whose Salary is greater than 60000, including employees without a department.

SELECT e.Emp_name, e.Salary, d.department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id
WHERE e.Salary > 60000;



-- Q19.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show employees whose Department is HR or IT, but also include employees without a department.

SELECT e.Emp_name, d.department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IN ('HR' , 'IT') OR d.department IS NULL;



-- Q20.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Salary
-- Department
-- Show employees whose Salary is between 50000 and 70000.

SELECT e.emp_id, e.Emp_name, e.Salary, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary BETWEEN 50000 AND 70000;



-- Q21.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show employees whose Department starts with 'S'.

SELECT e.Emp_name, d.department 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department LIKE "S%";



-- Q22.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show all employees and sort the result by Emp_Name (A–Z).

SELECT e.emp_id, e.Emp_name, d.department, e.Salary 
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id
ORDER BY e.Emp_name ASC;



-- Q23.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show employees whose Department is Finance or Marketing.

SELECT e.Emp_name, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id
WHERE d.department IN ('Finance', 'Marketing');



-- Q24.
-- Write an SQL query to display:
-- Emp_Name
-- Salary
-- Department
-- Show employees whose Salary is less than 50000.

SELECT e.Emp_name, e.Salary, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary < 50000;



-- Q25.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Show employees whose Department is NULL.

SELECT e.emp_id,  e.Emp_name, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department IS NULL;




-- Q26.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Sort the result by Department (A–Z) and then Salary (Highest to Lowest).

SELECT e.Emp_name, COALESCE(d.department, "NOT FILLED") AS DEPARTMENT, e.Salary
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
ORDER BY d.department ASC, e.Salary DESC;



-- Q27.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show employees whose Department is not Sales.

SELECT e.Emp_name, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id
WHERE d.department != "Sales";



-- Q28.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show employees whose Salary is greater than or equal to 55000.

SELECT e.emp_id, e.Emp_name, d.department, e.Salary
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.Salary >= 55000;



-- Q29.
-- Write an SQL query to display:
-- Emp_Name
-- Departmen
-- Show employees whose Department is Support, including employees without a department.

SELECT e.Emp_name, d.department
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department = 'Support' OR d.department IS NULL;



-- Q30.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show employees whose Department is not HR, but also include employees without a matching department.

SELECT e.emp_id, e.Emp_name, d.department, e.Salary
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department != "HR" OR d.department IS NULL;



-- Q31. ⭐ (Project Level)
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Salary
-- Show all employees who:
-- belong to IT, Finance, Sales, or HR
-- OR do not have a matching department.

-- Sort the result by:
-- Department (A–Z)
-- Salary (Highest to Lowest)

SELECT e.emp_id, e.Emp_name, d.department, e.Salary
FROM employe e
LEFT JOIN department d
ON e.dept_id = d.dept_id
WHERE d.department IN ('IT', 'Finance', 'Sales', 'HR') OR d.department IS NULL ORDER BY d.department ASC, e.Salary DESC;



-- Q32.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Show all departments, even if no employee is assigned to them.
-- Use RIGHT JOIN.

SELECT e.Emp_name, d.department
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;



-- Q33.
-- Write an SQL query to display:
-- emp_id
-- Emp_Name
-- Department
-- Show all departments with their employees.
-- Use RIGHT JOIN.

SELECT e.emp_id, e.Emp_name, d.department
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id ;



-- Q34.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Salary
-- Show all departments and the employees working in them.
-- Use RIGHT JOIN.

SELECT d.department, e.Emp_name, e.Salary
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;



-- Q35.
-- Write an SQL query to display:
-- Department
-- Show departments that do not have any employees.

SELECT d.department, e.Emp_name
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id 
WHERE e.emp_id IS NULL;



-- Q36.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Show departments where no employee is assigned

SELECT d.department, e.Emp_name
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id
WHERE e.Emp_name IS NULL;



-- Q37.
-- Write an SQL query to display:
-- Emp_Name
-- Department
-- Salary
-- Sort the result by Department (A–Z).

SELECT e.Emp_name, d.department, e.Salary 
FROM employe e 
RIGHT JOIN department d
ON e.dept_id = d.Dept_id 
ORDER BY d.department ASC;



-- Q38.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Show employees working in the IT department.

SELECT d.department, e.Emp_name
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department = 'IT';



-- Q39.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Salary
-- Show employees whose Salary is greater than 60000.

SELECT d.department, e.Emp_name, e.Salary
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id
WHERE e.Salary > 60000;



-- Q40.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Replace NULL Employee Name with 'No Employee'

SELECT d.department, COALESCE(e.Emp_name, 'NO EMPLOYEE')AS no_employee 
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id;



-- Q41.
-- Write an SQL query to display:
-- Department
-- Total_Employees
-- Display the number of employees in each department, including departments with 0 employees.

SELECT d.department, COUNT(e.emp_id) AS Total_Employes
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id 
GROUP BY d.department;



-- Q42.
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Salary
-- Show employees whose Department is not HR, but also include departments that have no employees.

SELECT d.department, e.Emp_name, e.Salary 
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id 
WHERE d.department != 'HR' OR e.emp_id IS NULL;



-- Q43. ⭐ (Project Level)
-- Write an SQL query to display:
-- Department
-- Emp_Name
-- Salary
-- Show:
-- all departments
-- employees whose Salary is greater than or equal to 55000
-- also include departments with no employees
-- Sort the result by:
-- Department (A–Z)
-- Salary (Highest to Lowest)

SELECT d.department, e.Emp_name, e.SalarY
FROM employe e
RIGHT JOIN department d
ON e.dept_id = d.dept_id
WHERE e.Salary >= 55000 OR e.emp_id IS NULL ORDER BY d.department ASC, e.Salary DESC;

















