-- 1) Category Performance View
CREATE OR REPLACE VIEW V_CATEGORY_PERFORMANCE AS
SELECT
product_category_name_english AS CATEGORY, 
COUNT(DISTINCT OI.ORDER_ID) AS TOTAL_ORDERS, 
COUNT(*) AS TOTAL_ITEMS_SOLD,
ROUND(SUM(OI.PRICE),2) AS TOTAL_REVENUE,
ROUND(AVG(OI.PRICE),2) AS AVG_PRICE
FROM ORDER_ITEMS AS OI
JOIN PRODUCTS AS P 
ON OI.PRODUCT_ID = P.PRODUCT_ID
JOIN CATEGORY_TRANSLATION AS CT
ON P.PRODUCT_CATEGORY_NAME= CT.PRODUCT_CATEGORY_NAME
GROUP BY CATEGORY
ORDER BY TOTAL_REVENUE DESC
LIMIT 15;


-- 2) Delivery Performance View
CREATE OR REPLACE VIEW V_Delivery_Performance AS 
SELECT 
CASE 
  WHEN order_estimated_delivery_date >= order_delivered_customer_date THEN 'ON-TIME'
  ELSE 'LATE'
END AS DELVIERY_STATUS,
COUNT(*) AS TOTAL_ORDERS,
ROUND(100.0 * COUNT(*)/SUM(COUNT(*)) OVER(), 2) AS PERCENTAGE
FROM ORDERS
WHERE ORDER_STATUS = 'delivered'
   AND order_estimated_delivery_date IS NOT NULL
   AND order_delivered_customer_date IS NOT NULL
GROUP BY 1;


-- 3) Delivery vs Review Score View
CREATE  OR REPLACE VIEW V_Delivery_vs_Review AS
SELECT 
CASE 
  WHEN order_estimated_delivery_date >= order_delivered_customer_date THEN 'ON-TIME'
  ELSE 'LATE'
END AS DELVIERY_STATUS,
    COUNT(*) AS total_reviews,
    ROUND(AVG(r.review_score), 2) AS avg_review_score,
    ROUND(100.0 * SUM(CASE WHEN r.review_score <= 2 THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_low_scores
FROM orders o
JOIN order_reviews r 
    ON o.order_id = r.order_id
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY 1;


-- 4) Payment Analysis View
CREATE OR REPLACE VIEW V_PAYMENT_ANALYSIS AS
SELECT payment_type,
COUNT(DISTINCT ORDER_ID) AS TOTAL_ORDERS,
ROUND(AVG(payment_installments),2) AS AVG_INSTALLMENTS,
ROUND(AVG(payment_value),2) AS AVG_PAY_VALUES,
ROUND(SUM(payment_value),2) AS total_payment_value 
FROM ORDER_PAYMENTS
GROUP BY PAYMENT_TYPE
ORDER BY total_payment_value  DESC;


-- 5) Monthly Sales View
CREATE OR REPLACE VIEW V_MONTHLY_SALES AS
SELECT 
DATE_TRUNC('month', o.order_purchase_timestamp)::DATE AS month,
COUNT(DISTINCT O.ORDER_ID) AS TOTAL_ORDERS,
ROUND(SUM(oi.price), 2) AS total_revenue,
ROUND(SUM(oi.price) / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM ORDER_ITEMS AS OI
JOIN ORDERS AS O
ON OI.ORDER_ID = O.ORDER_ID
GROUP BY 1
ORDER BY 1;