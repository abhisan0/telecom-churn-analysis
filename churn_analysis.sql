================================================
Telecom Customer Churn Analysis - SQL Queries
-- Database: SQLite | Table: customer_churn
================================================

-- 1. Total Customers
SELECT COUNT(*) AS Total_Customers 
FROM customer_churn;

-- 2. Churn Distribution
SELECT 
    CASE WHEN Churn = 1 THEN 'Churned' ELSE 'Active' END AS Churn_Status,
    COUNT(*) AS Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn), 2) AS Percentage
FROM customer_churn 
GROUP BY Churn;

-- 3. Average Customer Value
SELECT 
    ROUND(AVG("Customer Value"), 2) AS Avg_Customer_Value,
    ROUND(MIN("Customer Value"), 2) AS Min_Value,
    ROUND(MAX("Customer Value"), 2) AS Max_Value
FROM customer_churn;

-- 4. Churn by Tariff Plan
SELECT 
    CASE WHEN "Tariff Plan" = 1 THEN 'Pay-as-you-go' ELSE 'Contract' END AS Plan,
    CASE WHEN Churn = 1 THEN 'Churned' ELSE 'Active' END AS Status,
    COUNT(*) AS Count
FROM customer_churn 
GROUP BY "Tariff Plan", Churn;

-- 5. High Value Customers
SELECT 
    "Customer Value",
    "Subscription Length",
    Churn,
    Complains
FROM customer_churn 
WHERE "Customer Value" > 500 
ORDER BY "Customer