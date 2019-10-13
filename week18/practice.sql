-- 1) Which shippers do we have?
SELECT * FROM Shippers;

-- 2) Certain fields from Categories
SELECT CategoryName, Description FROM Categories;

-- 3) Sales Representatives
SELECT FirstName, LastName, HireDate FROM Employees WHERE Title = 'Sales Representative';

-- 4) Sales Representatives in the United States
SELECT FirstName, LastName, HireDate FROM Employees WHERE Title = 'Sales Representative' AND Country = 'USA';

-- 5) Orders placed by specific EmployeeID
SELECT OrderID, OrderDate FROM Orders WHERE EmployeeID = '5';

-- 6) Suppliers & Contact Titles
SELECT SupplierID, ContactName, ContactTitle FROM Suppliers WHERE ContactTitle != 'Marketing Manager';

--7) Products with queso in ProductName
SELECT ProductID, ProductName FROM Products WHERE ProductName like '%queso%';

--8) Orders shipping to France or Belgium
SELECT OrderID, CustomerID, ShipCountry FROM Orders WHERE ShipCountry = 'France' OR ShipCountry = 'Belgium';

--9) Orders shipping to any country in Latin America
SELECT OrderID, CustomerID, ShipCountry FROM Orders WHERE ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

--10) Employees, in order of age
SELECT FirstName, LastName, Title, BirthDate FROM Employees ORDER BY BirthDate;

--11) Showing only the Date with a DateTime field
SELECT FirstName, LastName, Title, Date(BirthDate) as DateOnlyBirthday FROM Employees ORDER BY BirthDate;

--12) Employees FullName
SELECT FirstName, LastName, Concat(FirstName, ' ',LastName) as FullName FROM Employees;

--13) OrderDetails amount per line item
SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice * Quantity as TotalPrice FROM OrderDetails ORDER BY OrderID, ProductID;

--14) How many customers?
SELECT count(*) as TotalCustomers from Customers;