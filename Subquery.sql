-- get 3rd oldest employee

SELECT * FROM employees e1 
WHERE 3 = ( SELECT count(e2.age) from employees e2 
WHERE e2.age >= e1.age ); 

