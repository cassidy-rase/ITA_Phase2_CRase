-- 30) Customers with no orders
SELECT 
	Customers.CustomerID as Customers_CustomerID
    ,Orders.CustomerID as Orders_CustomerID
FROM Customers
	left join Orders
		on Orders.CustomerID = Customers.CustomerID
WHERE
	Orders.CustomerID is null;

-- 31) Customers with no orders for EmployeeID 4
SELECT
	Customers.CustomerID
    ,Orders.CustomerID
FROM Customers
	left join Orders
		on Orders.CustomerID = Customers.CustomerID
        and Orders.EmployeeID = 4
WHERE 
	Orders.CustomerID is null;

-- 32) High Value Customers
SELECT 
	Customers.CustomerID
    ,Customers.CompanyName
    ,Orders.OrderID
    ,SUM(Quantity * UnitPrice) as TotalOrderAmount
FROM Customers
	Join Orders
		on Orders.CustomerID = Customers.CustomerID
	Join OrderDetails
		on Orders.OrderID = OrderDetails.OrderID
WHERE
	OrderDate >= '2016-01-01'
    and OrderDate < '2017-01-01'
GROUP BY
	Customers.CustomerID
    ,Customers.CompanyName
    ,Orders.OrderID
Having Sum(Quantity * UnitPrice) >= 10000
Order by TotalOrderAmount DESC;

-- 33) High Value Customers - Total Orders
SELECT 
	Customers.CustomerID
    ,Customers.CompanyName
    ,SUM(Quantity * UnitPrice) as TotalOrderAmount
FROM Customers
	Join Orders
		on Orders.CustomerID = Customers.CustomerID
	Join OrderDetails
		on Orders.OrderID = OrderDetails.OrderID
WHERE
	OrderDate >= '2016-01-01'
    and OrderDate < '2017-01-01'
GROUP BY
	Customers.CustomerID
    ,Customers.CompanyName
Having Sum(Quantity * UnitPrice) >= 10000
Order by TotalOrderAmount DESC;

-- 34) High Value Customers - With Discount
SELECT
Customers.CustomerID
,Customers.CompanyName
,SUM(Quantity * UnitPrice) as TotalsWithoutDiscount ,SUM(Quantity * UnitPrice * (1- Discount)) as TotalsWithDiscount
FROM Customers
    JOIN Orders
        on Orders.CustomerID = Customers.CustomerID
    JOIN OrderDetails
        on Orders.OrderID = OrderDetails.OrderID
WHERE   OrderDate >= '2016-01-01'
    and OrderDate  < '2017-01-01'
GROUP BY
    Customers.CustomerID
    ,Customers.CompanyName
Having TotalsWithDiscount  > 10000
ORDER BY TotalsWithDiscount DESC;

