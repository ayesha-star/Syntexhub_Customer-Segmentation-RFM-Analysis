/*CREATE DATABASE customer_segmentation;

USE customer_segmentation;

SELECT *
FROM customer_transactions;

SELECT COUNT(*) AS Total_Transactions
FROM customer_transactions; 
 
DESCRIBE customer_transactions; 

SELECT *
FROM customer_transactions
WHERE TransactionID IS NULL
   OR CustomerID IS NULL
   OR CustomerName IS NULL
   OR PurchaseDate IS NULL
   OR ProductCategory IS NULL
   OR ProductName IS NULL
   OR Quantity IS NULL
   OR UnitPrice IS NULL
   OR TotalAmount IS NULL
   OR PaymentMethod IS NULL
   OR City IS NULL;