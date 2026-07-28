# Project Diary

## Project
Customer Segmentation using RFM Analysis

---



## Planning

Created the project folder structure.

Prepared folders for:

- Dataset
- SQL Scripts
- Power BI Dashboard
- Documentation

Understood the project requirements before starting.

---

## Dataset Preparation

Created a realistic transactional dataset containing:

- 500 customer transactions
- 100 unique customers
- Product categories
- Product names
- Purchase dates
- Quantity
- Unit Price
- Total Amount
- Payment Method
- City

Designed the dataset to support meaningful RFM Analysis.

---



## Database Creation

Created the MySQL database.

Imported the transactional dataset into MySQL Workbench.

Verified successful data import.

---

## Data Cleaning

Performed several quality checks:

- Verified total number of transactions.
- Checked for NULL values.
- Checked duplicate Transaction IDs.
- Validated TotalAmount calculations.
- Checked for negative values.
- Verified purchase date range.
- Confirmed total number of customers.

Dataset was clean and ready for analysis.

---



## RFM Analysis

Calculated:

- Recency
- Frequency
- Monetary

for each customer using SQL.

Created customer-level summaries using aggregate functions.

---

## Customer Segmentation

Segmented customers into:

- Loyal Customer
- Regular Customer
- New Customer
- Churn Risk

using SQL CASE statements.

Generated customer counts for each segment.

---



## Business Analysis

Analyzed:

- Revenue by customer segment
- Customer distribution
- Revenue by product category
- Revenue by city
- Customer purchasing behavior

Prepared marketing recommendations for different customer groups.

---



## Power BI Dashboard

Connected MySQL database to Power BI.

Created KPI measures:

- Total Revenue
- Total Customers
- Total Transactions
- Average Order Value
- Average Revenue per Customer

Built an RFM Summary table using DAX.

Created customer segmentation inside Power BI.

Designed an interactive dashboard including:

- KPI Cards
- Customer Segment Distribution
- Revenue by Customer Segment
- Customer RFM Analysis
- Revenue by Product Category
- Revenue by City

Applied formatting to improve readability and presentation.

---

# Project Outcome

Successfully built an end-to-end Customer Segmentation project using SQL and Power BI.

The project demonstrates:

- Data Cleaning
- SQL Analysis
- RFM Analysis
- Customer Segmentation
- Business Insights
- Marketing Recommendations
- Dashboard Design

This project strengthened my understanding of customer analytics and business intelligence while improving my SQL and Power BI skills.