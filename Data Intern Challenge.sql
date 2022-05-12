--Question 2A--

SELECT ShipperName, COUNT(DISTINCT OrderID) as NumberOfOrders
FROM Orders
LEFT JOIN Shippers
USING (ShipperID)
WHERE ShipperName = 'Speedy Express';

--Question 2B--

SELECT LastName, Count(DISTINCT OrderID) as NumberOfOrders
FROM Orders
LEFT JOIN Employees
USING (EmployeeID)
GROUP BY LastName
ORDER BY NumberOfOrders DESC
LIMIT 1;


--Question 2C--

SELECT ProductName, SUM(Quantity) AS TotalOrders 
FROM Products p, Orders o, OrderDetails od, customers c
WHERE c.CustomerID = o.CustomerID AND c.Country = 'Germany' AND o.OrderID = od.OrderID AND od.ProductID = p.ProductID
GROUP BY ProductName
ORDER BY TotalOrders DESC
LIMIT 1;