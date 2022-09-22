SELECT * FROM Sales.OrderLines WHERE UnitPrice > 100 

SELECT TOP (100) OrderID, StockItemID, Description, Quantity, UnitPrice FROM Sales.OrderLines

SELECT TOP (100) OrderID, StockItemID, Description, Quantity, UnitPrice AS price, (UnitPrice * Quantity) AS Summ FROM Sales.OrderLines

SELECT TOP (100) ol.OrderID, ol.Description, ol.Quantity, ol.UnitPrice AS price, si.StockItemName, (ol.UnitPrice * ol.Quantity) AS Summ FROM Sales.OrderLines ol, Warehouse.StockItems si WHERE ol.StockItemID = si.StockItemID

SELECT COUNT(*) FROM Sales.OrderLines ol, Warehouse.StockItems si WHERE ol.StockItemID = si.StockItemID    
