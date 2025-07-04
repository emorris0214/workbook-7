
-- 1. How many suppliers are there? Use a query!

SELECT
	COUNT(*)
AS
	Supplier_Count 
FROM Suppliers;
-- 2. What is the sum of all the employee's salaries?
SELECT SUM(Salary) FROM Employees;

-- 3. What is the price of the cheapest item that Northwind sells?
SELECT * 
-- 4. What is the average price of items that Northwind sells?
-- 5. What is the price of the most expensive item that Northwind sells?
-- 6. What is the supplier ID of each supplier and the number of items they supply? You can answer this query by only looking at the Products table.
-- 7. What is the category ID of each category and the average price of each item in the category?
-- You can answer this query by only looking at the Products table.
-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply? You
-- can answer this query by only looking at the Products table.
-- 9. List the product id, product name, and inventory value (calculated by multiplying unit price by the number of units on hand).
-- Sort the results in descending order by value. If two or more have the same value, order by product name