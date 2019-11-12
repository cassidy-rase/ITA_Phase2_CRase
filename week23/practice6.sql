-- 35) Month End Orders
SELECT
	EmployeeID
	,OrderID
	,OrderDate
FROM Orders
WHERE OrderDate = Last_Day(OrderDate)
ORDER BY
    EmployeeID
    ,OrderID;

-- 36) Orders With Many Line Items
SELECT
	OrderID
    ,COUNT(*) as TotalOrderDetails
FROM OrderDetails
GROUP BY OrderID 
ORDER BY COUNT(*) DESC
LIMIT 10;

-- 37) Orders - Random Assortment
SELECT
    OrderID
FROM Orders
ORDER BY Rand()
LIMIT 10;

-- 38) Orders - Accidental Double Entry

