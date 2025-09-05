-- You are given two tables:
-- Employees – contains employee details with columns EmpID, EmpName, DeptID, and Salary.
-- Departments – contains department details with columns DeptID and DeptName.
-- Write an SQL query to find the highest-paid employee in each department and display their name, salary, and the department name.

SELECT e.EmpName, d.DeptName, e.Salary
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
WHERE e.Salary = (
    SELECT MAX(Salary)
    FROM Employees
    WHERE DeptID = e.DeptID
);

