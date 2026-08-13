-- 1. Descriptive Statistics
SELECT 
    COUNT(*) AS Total_Records,
    ROUND(MIN(Sales), 2) AS Min_Sales,
    ROUND(MAX(Sales), 2) AS Max_Sales,
    ROUND(AVG(Sales), 2) AS Average_Sales,
    ROUND(STDDEV(Sales), 2) AS Sales_Std_Dev,
    ROUND(MIN(Profit), 2) AS Min_Profit,
    ROUND(MAX(Profit), 2) AS Max_Profit,
    ROUND(AVG(Profit), 2) AS Average_Profit,
    ROUND(STDDEV(Profit), 2) AS Profit_Std_Dev,
    MIN(Quantity) AS Min_Quantity,
    MAX(Quantity) AS Max_Quantity,
    ROUND(AVG(Quantity), 2) AS Average_Quantity
FROM
    orders;
    

-- 2.Median By Sales

SELECT 
	AVG(Sales) AS Median_Sales
FROM (
	SELECT
		Sales,
        ROW_NUMBER() OVER (ORDER BY Sales) AS rn,
        COUNT(*) OVER() AS total_rows
	FROM orders
) AS ranked
WHERE rn IN (
	FLOOR((total_rows + 1) / 2),
    CEIL((total_rows + 1) / 2)
);

-- Median By Profit
SELECT 
	AVG(Profit) AS Median_Profit
FROM (
	SELECT
		Profit,
        ROW_NUMBER() OVER (ORDER BY Profit) AS rn,
        COUNT(*) OVER() AS total_rows
	FROM orders
) AS ranked
WHERE rn IN (
	FLOOR((total_rows + 1) / 2),
    CEIL((total_rows + 1) / 2)
);

-- Discount Analysis
SELECT 
    ROUND(MIN(Discount), 2) AS Min_Discount,
    ROUND(MAX(Discount), 2) AS Max_Discount,
    ROUND(AVG(Discount), 2) AS Avg_Discount,
    ROUND(STDDEV(Discount), 2) AS Discount_std_Dev
FROM
    orders;
    
    
-- Discount vs Profit Analysis
SELECT 
    Discount,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Profit), 2) AS Avg_Profit
FROM
    orders
GROUP BY Discount
ORDER BY Discount;

-- Loss Making Transactions
SELECT 
    COUNT(*) AS Loss_Making_Transactions
FROM
    orders
WHERE
    profit < 0;

-- Loss Transaction Percentage
SELECT 
    ROUND(COUNT(*) * 100 / (SELECT 
                    COUNT(*)
                FROM
                    orders),
            2) AS Loss_Transaction_Percentage
FROM
    orders
WHERE
    profit < 0;

-- Prifitability Status Analysis
SELECT 
    CASE
        WHEN Profit > 0 THEN 'Profitable'
        WHEN Profit < 0 THEN 'Loss'
        ELSE 'Zero Profit'
    END AS Profit_Status,
    COUNT(*) AS Transaction_Count,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM
    orders
GROUP BY CASE
    WHEN Profit > 0 THEN 'Profitable'
    WHEN Profit < 0 THEN 'Loss'
    ELSE 'Zero Profit'
END;

-- Extreme High-Sales Transactions
SELECT 
    Order_ID, Product_Name, Sales, Profit, Quantity, Discount
FROM
    orders
ORDER BY Sales DESC
LIMIT 10;

-- Extreme Loss Transactions
SELECT 
    Order_ID, Product_Name, Sales, Profit, Quantity, Discount
FROM
    orders
ORDER BY Sales ASC
LIMIT 10;

SELECT Sales
FROM orders
ORDER BY Sales
LIMIT 1 OFFSET 2420;

SELECT Sales
FROM orders
ORDER BY Sales
LIMIT 1 OFFSET 7262;


select 
	count(*) as Sales_Outlier_Count
from orders
where Sales > 509.055;

select 
	Order_ID,
    Product_Name,
    Sales,
    Profit,
    Quantity,
    Discount
from orders
where Sales > 509.055
order by Sales desc;











