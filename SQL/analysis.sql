-- ===========================================================
-- E-Commerce Sales Analysis
-- SQL Analysis
-- ===========================================================

-- created a database
CREATE DATABASE ecommerce_analysis;

-- importing table

-- used database
USE ecommerce_analysis;

-- Dataset Overview
SELECT 
    COUNT(*) AS Total_Rows
FROM
    orders;

-- Number of Orders
SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM
    orders;
    
-- Number of Customers
SELECT 
    COUNT(DISTINCT customer_id) AS Total_Customers
FROM
    orders;
    
-- Number of Products
SELECT 
    COUNT(DISTINCT product_id) AS Total_Products
FROM
    orders;

-- Overall Business Performance
SELECT 
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders;

-- Sales By Category
SELECT 
    category,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY category
ORDER BY Total_Sales DESC;

-- Sales By Sub-Category
SELECT 
    sub_category,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY sub_category
ORDER BY Total_Sales DESC;

-- Sales By Region
SELECT 
    region,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY region
ORDER BY Total_Sales DESC;

-- Sales By Segment
SELECT 
    segment,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY segment
ORDER BY Total_Sales DESC;

-- Top 10 Products based on total sales
SELECT 
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY product_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- Lowest 10 product based on total sales
SELECT 
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY product_name
ORDER BY Total_Sales ASC
LIMIT 10;

-- Loss making products
SELECT 
    product_name,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit,
    SUM(quantity) AS Total_Quantity
FROM
    orders
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY Total_Sales ASC
LIMIT 5;

-- State wise performance
SELECT 
    state,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit
FROM
    orders
GROUP BY state
ORDER BY Total_Sales DESC;

-- City wise performance
SELECT 
    city,
    SUM(sales) AS Total_Sales,
    SUM(profit) AS Total_Profit
FROM
    orders
GROUP BY city
ORDER BY Total_Sales DESC;


-- Year wise performance
SELECT
    YEAR(Order_Date_Clean) AS Order_Year,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM orders
GROUP BY YEAR(Order_Date_Clean)
ORDER BY Order_Year;




















