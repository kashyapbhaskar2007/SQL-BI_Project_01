# Olist E-commerce SQL Analysis

## Project Overview
This project analyzes the **Olist Brazilian E-commerce Public Dataset** using SQL to extract meaningful business insights related to sales performance, delivery efficiency, customer satisfaction, payment behavior, and geographic distribution.

The analysis was performed using **PostgreSQL** and **pgAdmin**.

---

## Dataset
**Source:** [Brazilian E-Commerce Public Dataset by Olist (Kaggle)](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

### Tables Used
- Orders
- Order Items
- Products
- Customers
- Sellers
- Order Payments
- Order Reviews
- Product Category Translation

---

## Tools Used
- PostgreSQL
- pgAdmin 4
- SQL
  
---

## Project Workflow

1. **Data Import** – Loaded all required tables into PostgreSQL
2. **Data Quality Checks** – Checked nulls, duplicates, primary keys, and foreign key integrity
3. **Core Insights** – Performed exploratory analysis using SQL queries
4. **Views Creation** – Converted important insights into reusable views
5. **Final Analysis** – Answered business questions using the created views
6. **Summary & Recommendations** – Documented key findings

---

## Key Insights

- **Top Categories:** Health & Beauty, Watches & Gifts, and Bed & Bath generated the highest revenue.
- **Delivery Performance:** Late deliveries negatively impact customer review scores.
- **Payments:** Credit Card is the most preferred payment method.
- **Geography:** Customers and sellers are highly concentrated in São Paulo (SP).
- **Freight Cost:** Some categories have high shipping costs relative to product price.
- **Sales Trend:** Overall monthly sales showed growth over time.
  
---

## Project Structure

```text
Olist_SQL_Project/
├── 01_IMPORTING_DATASETS.sql
├── 02_Data_Quality.sql
├── 03_Core_Insights.sql
├── 04_CREATING_VIEWS.sql
├── 05_Final_Analysis.sql
├── 06_Project_Summary.md
└── README.md

----------------
## Author
Bhaskar Kashyap
SQL | Data Analysis | PostgreSQL
