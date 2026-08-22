-- DecodeLabs Data Analytics - Project 3: SQL Data Analysis

-- 01_SELECT_All
SELECT * FROM orders;

-- 02_WHERE_High_Value
SELECT * FROM orders WHERE TotalPrice > 1000 ORDER BY TotalPrice DESC;

-- 03_ORDER_BY_Revenue
SELECT OrderID, Product, TotalPrice FROM orders ORDER BY TotalPrice DESC;

-- 04_GROUP_BY_COUNT_Product
SELECT Product, COUNT(*) AS OrderCount FROM orders GROUP BY Product ORDER BY OrderCount DESC;

-- 05_GROUP_BY_SUM_Revenue
SELECT Product, SUM(TotalPrice) AS TotalRevenue FROM orders GROUP BY Product ORDER BY TotalRevenue DESC;

-- 06_AVG_Order_Value
SELECT AVG(TotalPrice) AS AverageOrderValue FROM orders;

-- 07_COUNT_Product
SELECT Product, COUNT(*) AS OrderCount FROM orders GROUP BY Product ORDER BY OrderCount DESC;

-- 08_AVG_Quantity_Product
SELECT Product, AVG(Quantity) AS AverageQuantity FROM orders GROUP BY Product ORDER BY AverageQuantity DESC;

-- 09_SUM_Revenue_Payment
SELECT PaymentMethod, SUM(TotalPrice) AS TotalRevenue FROM orders GROUP BY PaymentMethod ORDER BY TotalRevenue DESC;
