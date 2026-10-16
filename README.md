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

Olist_SQL_Project/
├── 01_IMPORTING_DATASETS.sql
├── 02_Data_Quality.sql
├── 03_Core_Insights.sql
├── 04_CREATING_VIEWS.sql
├── 05_Final_Analysis.sql
├── 06_Project_Summary.md
└── README.md


## Power BI Dashboard

An interactive dashboard was created in Power BI using the Olist dataset connected directly to PostgreSQL.

### Dashboard Pages:
- **Executive Overview** – Key KPIs, Top Categories, Monthly Revenue Trend
- **Sales & Delivery** – Delivery Performance, Review Impact, Payment Analysis
- **Geography & Freight** – Customer & Seller Distribution, Freight Analysis

### Dashboard Screenshots:

![Executive Overview](<img width="1328" height="746" alt="dashboard_executive_overview" src="https://github.com/user-attachments/assets/20ed4587-917c-464e-a651-6784097d72b2" />
)
![Sales & Delivery](<img width="1327" height="743" alt="dashboard_sales_delivery" src="https://github.com/user-attachments/assets/2db09064-dd9a-49cc-ad5b-0445240e95bf" />
)
![Geography & Freight](<img width="1325" height="745" alt="dashboard_geography_freight" src="https://github.com/user-attachments/assets/68538804-b479-40a3-affa-bec70c70f8b6" />
)


----------------
## Author
Bhaskar Kashyap
SQL | Data Analysis | PostgreSQL
