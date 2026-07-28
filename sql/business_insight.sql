-- Top 10 Customers by Spending
/* SELECT
    CustomerID,
    CustomerName,
    SUM(TotalAmount) AS Total_Spent
FROM customer_transactions
GROUP BY CustomerID, CustomerName
ORDER BY Total_Spent DESC
LIMIT 10; 

-- Revenue by Customer Segment
SELECT
    Customer_Segment,
    SUM(Monetary) AS Total_Revenue
FROM
(
    SELECT
        CustomerID,

        SUM(TotalAmount) AS Monetary,

        CASE
            WHEN DATEDIFF('2026-07-01', MAX(PurchaseDate)) <= 30
                 AND COUNT(TransactionID) >= 7
            THEN 'Loyal Customer'

            WHEN COUNT(TransactionID) = 1
                 AND DATEDIFF('2026-07-01', MAX(PurchaseDate)) <= 60
            THEN 'New Customer'

            WHEN DATEDIFF('2026-07-01', MAX(PurchaseDate)) > 180
            THEN 'Churn Risk'

            ELSE 'Regular Customer'
        END AS Customer_Segment

    FROM customer_transactions

    GROUP BY CustomerID
) AS Segments

GROUP BY Customer_Segment
ORDER BY Total_Revenue DESC; 

-- Average Spend per Segment
SELECT
    Customer_Segment,
    ROUND(AVG(Monetary), 2) AS Avg_Spend
FROM
(
    SELECT
        CustomerID,

        SUM(TotalAmount) AS Monetary,

        CASE
            WHEN DATEDIFF('2026-07-01', MAX(PurchaseDate)) <= 30
                 AND COUNT(TransactionID) >= 7
            THEN 'Loyal Customer'

            WHEN COUNT(TransactionID) = 1
                 AND DATEDIFF('2026-07-01', MAX(PurchaseDate)) <= 60
            THEN 'New Customer'

            WHEN DATEDIFF('2026-07-01', MAX(PurchaseDate)) > 180
            THEN 'Churn Risk'

            ELSE 'Regular Customer'
        END AS Customer_Segment

    FROM customer_transactions

    GROUP BY CustomerID
) AS Segments

GROUP BY Customer_Segment
ORDER BY Avg_Spend DESC; 

-- Most Popular Product Categories
SELECT
    ProductCategory,
    COUNT(*) AS Total_Orders,
    SUM(TotalAmount) AS Revenue
FROM customer_transactions
GROUP BY ProductCategory
ORDER BY Revenue DESC; 

-- Customers at risk of churning
SELECT
    CustomerID,
    CustomerName,
    MAX(PurchaseDate) AS Last_Purchase_Date,
    DATEDIFF('2026-07-01', MAX(PurchaseDate)) AS Days_Inactive
FROM customer_transactions
GROUP BY CustomerID, CustomerName
HAVING Days_Inactive > 180
ORDER BY Days_Inactive DESC; 

-- Revenue by city
SELECT
    City,
    SUM(TotalAmount) AS Revenue
FROM customer_transactions
GROUP BY City
ORDER BY Revenue DESC; 

-- Most frequent customers
SELECT
    CustomerID,
    CustomerName,
    COUNT(*) AS Purchase_Count
FROM customer_transactions
GROUP BY CustomerID, CustomerName
ORDER BY Purchase_Count DESC
LIMIT 10; 

-- Segment summary table
SELECT
    Customer_Segment,
    COUNT(*) AS Customers,
    ROUND(AVG(Recency),2) AS Avg_Recency,
    ROUND(AVG(Frequency),2) AS Avg_Frequency,
    ROUND(AVG(Monetary),2) AS Avg_Monetary
FROM
(
    SELECT
        CustomerID,

        DATEDIFF('2026-07-01', MAX(PurchaseDate)) AS Recency,

        COUNT(*) AS Frequency,

        SUM(TotalAmount) AS Monetary,

        CASE
            WHEN DATEDIFF('2026-07-01', MAX(PurchaseDate)) <= 30
                 AND COUNT(*) >= 7
            THEN 'Loyal Customer'

            WHEN COUNT(*) = 1
                 AND DATEDIFF('2026-07-01', MAX(PurchaseDate)) <= 60
            THEN 'New Customer'

            WHEN DATEDIFF('2026-07-01', MAX(PurchaseDate)) > 180
            THEN 'Churn Risk'

            ELSE 'Regular Customer'
        END AS Customer_Segment

    FROM customer_transactions
    GROUP BY CustomerID
) Segments

GROUP BY Customer_Segment; */

