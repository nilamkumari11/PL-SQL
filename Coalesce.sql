-- Display all departments and their employees, but if a department has no employees, show "No Employee".

SELECT d.dept_name, 
    COALESCE(e.emp_name, 'No Employees') AS emp_name
FROM dept d
LEFT JOIN emp e
ON d.dept_id=e.dept_id;