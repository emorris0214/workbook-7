-- 1. What categories of products does Northwind Traders sell?
-- A: 8 Different categories: Beverages, Condiments, Confections, Dairy, Grains/Cereal, Meat, Produce, Seafood
SELECT * FROM Categories;

-- 2. What is the name of a product that sounds interesting to you?
-- A: Tunnbrd
SELECT ProductName FROM Products;

-- 3. What are some of the countries in which we have customers?
-- A: There are 21 Countries, for example: Argentina, Austria, Germany, USA
SELECT DISTINCT Country FROM Customers;

-- 4. What date was our first order placed? How did you determine that?
-- A: 1996-07-04 // Clicking Orders then OrderDate tab to filter
SELECT * FROM Orders ORDER BY OrderDate DESC;

-- 5. What date was our last order placed?
-- A: 1998-05-06
SELECT * FROM Orders ORDER BY OrderDate DESC LIMIT 1;

-- 6. How many customers do we currently have?
-- A: 93 Customers
SELECT COUNT(*) FROM Customers;

-- 7. Do we have any suppliers in South America? Europe? Africa?
-- A: None.
SELECT * FROM Suppliers WHERE Country = "UK";

-- 8. What product has less than 10 in stock?
SELECT ProductName, UnitsInStock FROM Products WHERE UnitPrice < 10 ORDER BY UnitsInStock DESC;
-- 8. OG What is our most expensive product?
-- A: Cte de Blaye 263.5
SELECT * FROM Products ORDER BY UnitPrice ASC LIMIT 1;

-- 9. What is our least expensive product?
-- A: Geitost 2.5
SELECT * FROM Products ORDER BY UnitPrice ASC LIMIT 1;

-- 10. Get Germany and people specifically in a city:
SELECT * FROM Customers WHERE Country = "Germany" AND ContactName LIKE "H%";
