USE WideWorldImporters

SELECT * FROM Sales.Customers WHERE CustomerName LIKE 'Wingtip Toys%'

SELECT so.OrderID, so.OrderDate, sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total FROM Sales.Orders so, Sales.Customers sc, Sales.OrderLines sol WHERE so.CustomerID = sc.CustomerID AND so.OrderID = sol.OrderID GROUP By so.OrderID, so.OrderDate, sc.CustomerName ORDER BY OrderID

SELECT so.OrderID, so.OrderDate, sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total FROM Sales.Orders so, Sales.Customers sc, Sales.OrderLines sol WHERE so.CustomerID = sc.CustomerID AND so.OrderID = sol.OrderID AND (so.OrderDate BETWEEN '2014-12-01' AND '2014-12-31') GROUP By so.OrderID, so.OrderDate, sc.CustomerName ORDER BY OrderID

SELECT TOP(1) sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total FROM Sales.Orders so, Sales.Customers sc, Sales.OrderLines sol WHERE so.CustomerID = sc.CustomerID AND so.OrderID = sol.OrderID GROUP By sc.CustomerName

SELECT TOP(20) sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total FROM Sales.Orders so, Sales.Customers sc, Sales.OrderLines sol WHERE so.CustomerID = sc.CustomerID AND so.OrderID = sol.OrderID GROUP By sc.CustomerName ORDER BY Total DESC

SELECT AVG(Total) FROM (SELECT so.OrderID, so.OrderDate, sc.CustomerName, sum(sol.Quantity * sol.UnitPrice)Total FROM Sales.Orders so, Sales.Customers sc, Sales.OrderLines sol WHERE so.CustomerID = sc.CustomerID AND so.OrderID = sol.OrderID GROUP By so.OrderID, so.OrderDate, sc.CustomerName ) pipec
