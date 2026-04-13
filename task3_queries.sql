-- 1. SELECT Query
SELECT Order_ID, Sales, Profit
FROM superstore
LIMIT 200;

-- 2. WHERE Query
SELECT *
FROM superstore
WHERE Sales > 1000
LIMIT 200;

-- 3. ORDER BY Query
SELECT Customer_Name, Sales
FROM superstore
ORDER BY Sales DESC
LIMIT 200;

-- 4. GROUP BY Query
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

-- 5. HAVING Query
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING Total_Sales > 10000;

-- 6. SUBQUERY
SELECT *
FROM superstore
WHERE Sales > (
    SELECT AVG(Sales) FROM superstore
)
LIMIT 200;

-- 7. VIEW Creation
CREATE VIEW sales_summary AS
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

-- View Query
SELECT * FROM sales_summary;