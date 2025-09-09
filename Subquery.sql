-- get 3rd oldest employee

SELECT * FROM employees e1 
WHERE 3 = ( SELECT count(e2.age) from employees e2 
WHERE e2.age >= e1.age ); 

-- Write an SQL query to find the total sales amount grouped by each customer from the Orders table.

SELECT CustomerID, SUM(Amount) 
FROM Orders 
GROUP BY CustomerID;

-- You have a table named Orders with columns OrderID, CustomerID, OrderDate, and Amount. Write an SQL query to find the customers who placed more than 5 orders.

SELECT CustomerID, COUNT(OrderID) AS Orders 
FROM Orders
GROUP BY CustomerID
WHERE COUNT(OrderID) > 5;

-- Retrieve the names and salaries of employees who work in the IT department and earn more than 50,000.

SELECT emp_name,salary 
FROM emp 
WHERE emp_dept="IT" AND salary>50000;

-- Find the average salary of employees in each department.

SELECT dept, AVG(salary) AS avg_sal
FROM emp 
GROUP BY dept;

-- Display the department names where the average salary is greater than 60,000.

SELECT dept_name 
FROM emp 
GROUP BY dept_name 
HAVING AVG(salary) > 50000;

-- Retrieve the top 3 highest paid employees from the Employees table.

SELECT emp_name, salary 
FROM emp 
ORDER BY salary DESC
LIMIT 3;

-- Display the full names of employees in the format "LastName, FirstName" and convert them to uppercase.

SELECT UPPER(CONCAT(LastName,',',FirstName)) AS FulName
FROM emp; 

-- List the employees who joined in the year 2022.

SELECT * 
FROM emp 
WHERE YEAR(joining_date) = 2022; 

-- Show all employees along with their department names using a join.

SELECT e.emp_name, d.dept_name 
FROM emp e
JOIN dept d
ON e.dept_id = d.dept_id;

-- Find the employees whose salaries are greater than the average salary of all employees.

SELECT emp_name 
FROM emp 
WHERE salary > (SELECT AVG(salary) FROM emp); 

-- Rank employees by salary within each department, showing the department name, employee name, salary, and their rank.
