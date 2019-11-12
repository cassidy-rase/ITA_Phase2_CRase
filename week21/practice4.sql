-- 25) High freight charges
SELECT ShipCountry
	,Avg(Freight) as AverageFreight
FROM Orders
	GROUP BY ShipCountry
    ORDER BY AverageFreight desc
    LIMIT 3;

-- 26) High freigh charges 2015
SELECT ShipCountry
	,Avg(Freight) as AverageFreight
FROM Orders
WHERE OrderDate >= '2015-01-01'
	and OrderDate < '2016-01-01'
	GROUP BY ShipCountry
    ORDER BY AverageFreight desc
    LIMIT 3;

-- 27) High freight charges with between (Find the OrderID that is causing this list to be incorrect)
Order 10806

-- 28) High freight charges—last year
SELECT ShipCountry
	,Avg(Freight) as AverageFreight
FROM Orders
WHERE OrderDate >= 
	DATE_ADD((Select max(OrderDate) from Orders), INTERVAL -1 year)
	GROUP BY ShipCountry
    ORDER BY AverageFreight desc
    LIMIT 3;

-- 29) Employee/Order Detail report
SELECT
    Employees.EmployeeID
    ,Employees.LastName
    ,Orders.OrderID
    ,Products.ProductName
    ,OrderDetails.Quantity
FROM Employees
    JOIN Orders
        ON Orders.EmployeeID = Employees.EmployeeID
    JOIN OrderDetails
        ON Orders.OrderID = OrderDetails.OrderID
    JOIN Products
        ON Products.ProductID = OrderDetails.ProductID
ORDER BY
    Orders.OrderID
    ,Products.ProductID;
    