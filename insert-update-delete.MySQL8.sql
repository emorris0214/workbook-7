-- Let's continue working with Northwind.
USE northwind;
-- 1. Add a new supplier.
INSERT INTO
	Suppliers (CompanyName, ContactName, ContactTitle)
VALUES
	('BROKEY','PJ M','Brokey');
SELECT * FROM Suppliers;

-- 2. Add a new product provided by that supplier
INSERT INTO
	Products (ProductID, ProductName, SupplierID)
VALUES
	('78','Morcillas Hair Oil','30');
SELECT * FROM Products;
-- 3. List all products and their suppliers.
SELECT p.ProductName, s.CompanyName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;
-- 4. Raise the price of your new product by 15%.
INSERT INTO Products (ProductName, SupplierID, UnitPrice)
VALUES
	('Morcillias Hair Oil', 30, 25.00);

UPDATE Products
SET
	UnitPrice = UnitPrice * 1.15
WHERE ProductName = 'Morcillias Hair Oil';

SELECT ProductName, UnitPrice FROM Products;
-- 5. List the products and prices of all products from that supplier.
SELECT ProductName, UnitPrice
FROM Products
WHERE SupplierID = 30 AND 31;
-- 6. Delete the new product.
DELETE FROM Products
WHERE ProductName = 'Morcillas Hair Oil';

-- Checking --
SELECT *
FROM Products;
-- 7. Delete the new supplier.
SELECT * FROM Suppliers;

-- Struggling to delete --
DELETE FROM Suppliers
WHERE CompanyName = 'BROKEY';
-- 8. List all products.
SELECT * FROM Products;
-- 9. List all suppliers.
SELECT * FROM Suppliers;