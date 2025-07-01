CREATE DATABASE IF NOT EXISTS online_sales_db;
USE online_sales_db;

SELECT * FROM `online sales data`;

--  Preprocessing Checks

-- Check for missing dates
SELECT COUNT(*) AS null_dates
FROM `online sales data`
WHERE `Date` IS NULL;

-- Check for negative or zero total revenue
SELECT COUNT(*) AS invalid_total_revenue
FROM `online sales data`
WHERE `Total Revenue` <= 0;

-- Check for duplicate Transaction IDs
SELECT `Transaction ID`, COUNT(*) AS count
FROM `online sales data`
GROUP BY `Transaction ID`
HAVING count > 1;

-- Sales Trend Analysis Using Aggregations
SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM
    `online sales data`
GROUP BY
    order_year,
    order_month
ORDER BY
    order_year, order_month;

SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM
    `online sales data`
WHERE
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) = 2024
GROUP BY
    order_year,
    order_month
ORDER BY
    order_month;
    
    
    SELECT
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_year,
    MONTH(STR_TO_DATE(`Date`, '%Y-%m-%d')) AS order_month,
    SUM(`Total Revenue`) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM
    `online sales data`
WHERE
    YEAR(STR_TO_DATE(`Date`, '%Y-%m-%d')) = 2024
GROUP BY
    order_year,
    order_month
ORDER BY
    order_month;


    
    