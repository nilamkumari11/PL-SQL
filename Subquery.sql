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