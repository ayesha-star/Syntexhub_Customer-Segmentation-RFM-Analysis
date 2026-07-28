-- CHECK DUPLICATE TRANSACTIONS ID 
/*SELECT
    TransactionID,
    COUNT(*) AS Duplicate_Count
FROM customer_transactions
GROUP BY TransactionID
HAVING COUNT(*) > 1;

-- VERIFY TOTAL AMOUNT
SELECT *
FROM customer_transactions
WHERE TotalAmount <> Quantity * UnitPrice; 

-- CHECK NEGATIVE VALUES
SELECT *
FROM customer_transactions
WHERE Quantity <= 0
   OR UnitPrice <= 0
   OR TotalAmount <= 0; 
   
-- CHECK DATE RANGE
SELECT
MIN(PurchaseDate) AS First_Purchase,
MAX(PurchaseDate) AS Last_Purchase
FROM customer_transactions; 

-- CHECK DISTINCT CUSTOMERS
SELECT COUNT(DISTINCT CustomerID) AS Total_Customers
FROM customer_transactions; */

