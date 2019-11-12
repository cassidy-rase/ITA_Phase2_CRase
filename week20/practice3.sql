-- 20) Categories, and the total products in each category
SELECT 
	CategoryName,
	COUNT(*) as TotalProducts
FROM Products
	JOIN Categories
		on Products.CategoryID = Categories.CategoryID
GROUP BY
	CategoryName
ORDER BY
	COUNT(*) desc;

-- 21) Total customers per country/city
SELECT
    Country
    ,City
    ,COUNT(*)  as TotalCustomers
FROM Customers
GROUP BY
    Country
    ,City
ORDER BY
    COUNT(*) DESC;

-- 22) Products that need reordering
SELECT ProductID, ProductName, UnitsInStock, ReorderLevel 
    FROM Products 
    WHERE UnitsInStock <= ReorderLevel;

--23) Products that need reordering, continued
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued
	FROM Products 
    WHERE (UnitsInStock + UnitsOnOrder) <= ReorderLevel AND Discontinued = 0;

-- 24) Customer list by region
SELECT CustomerID, CompanyName, Region
	FROM Customers
    ORDER BY 
		Case 
			when Region is null then 1
			else 0
		End
        ,Region
        ,CustomerID;
    