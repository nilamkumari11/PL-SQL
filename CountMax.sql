-- Find the department with the highest number of employees from employees(emp_id, emp_name, dept_id)

SELECT dept_id
FROM employees
GROUP BY dept_id
HAVING COUNT(*) = (
    SELECT MAX(EMP_COUNT)
    FROM (
        SELECT dept_id, COUNT(*) AS emp_count 
        FROM employees e 
        GROUP BY dept_id
    ) AS dept_count
);

