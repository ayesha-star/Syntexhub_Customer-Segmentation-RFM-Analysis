/*SELECT
MAX(PurchaseDate) AS Last_Purchase
FROM customer_transactions;

-- CALCULATE RFM METRICS
SELECT
    CustomerID,
    CustomerName,

    DATEDIFF('2026-07-01', MAX(PurchaseDate)) AS Recency,

    COUNT(TransactionID) AS Frequency,

    SUM(TotalAmount) AS Monetary

FROM customer_transactions

GROUP BY
    CustomerID,
    CustomerName

ORDER BY Monetary DESC; 

-- CUSTOMER SEGMENTATION
SELECT
    CustomerID,
    CustomerName,

    DATEDIFF('2026-07-01', MAX(PurchaseDate)) AS Recency,

    COUNT(TransactionID) AS Frequency,

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

GROUP BY
    CustomerID,
    CustomerName

ORDER BY Monetary DESC; */

-- Count Customers in Each Segment
SELECT
    Customer_Segment,
    COUNT(*) AS Total_Customers
FROM
(
    SELECT
        CustomerID,

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

GROUP BY Customer_Segment;