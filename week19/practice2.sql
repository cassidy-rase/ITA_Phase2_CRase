-- 15) When was the first order?
SELECT min(OrderDate) as FirstOrder FROM Orders;

-- 16) Countries where there are customers
SELECT DISTINCT Country FROM Customers ORDER BY Country;

-- 17) Contact titles for customers
SELECT ContactTitle, count(*) as TotalContactTitle FROM Customers GROUP BY ContactTitle ORDER BY count(*) desc;

-- 18) Products with associated supplier names
SELECT ProductID, ProductName, CompanyName as Supplier FROM Products Pr JOIN Suppliers Su on Pr.SupplierID = Su.SupplierID;
