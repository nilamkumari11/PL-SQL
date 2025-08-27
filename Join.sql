-- SQL query to display the names of employees who have never received a bonus, given two tables: employees(emp_id, emp_name) and bonus(emp_id, bonus_amount)

SELECT e.emp_name
FROM employees e
LEFT JOIN bonus b ON e.emp_id = b.emp_id
WHERE b.bonus_amount IS NULL;
