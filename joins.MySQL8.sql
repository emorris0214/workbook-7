USE northwind;

-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.
SELECT
	ProductID,
    ProductName,
    UnitPrice,
    CompanyName
FROM
	Products P
    JOIN Suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitPrice > 75
ORDER BY P.ProductName;


-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
SELECT
	ProductID,
    ProductName,
    UnitPrice,
    CategoryName,
    CompanyName
FROM
	Products P
	JOIN Categories C on (P.CategoryID = C.CategoryID)
    JOIN Suppliers S ON (P.SupplierID = S.SupplierID)
ORDER BY ProductName;

-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.

SELECT
	ProductName,
    CategoryName
FROM
	Products AS P
    JOIN Categories AS C ON (P.CategoryID = C.CategoryID)
WHERE
	UnitPrice = (SELECT MAX(UnitPrice) FROM Products);
-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.
SELECT
	OrderId,
    ShipName,
    ShipAddress,
    CompanyName,
    ShipCountry
FROM
	Orders O
    JOIN Shippers S ON (O.ShipVia = S.ShipperID)
WHERE
	O.ShipCountry = "Germany"
	
-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?

SELECT
	O.OrderId,
    O.OrderDate,
    O.ShipName,
    O.ShipAddress
FROM
	Orders O
    JOIN `Order Details` OD ON (O.OrderID = OD.OrderID)
    
    (INCOMPLETE)
    
WHERE Products P