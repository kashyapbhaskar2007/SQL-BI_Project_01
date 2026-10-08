-- 1) Which are the top 5 revenue-generating categories?
SELECT CATEGORY, TOTAL_REVENUE
FROM V_CATEGORY_PERFORMANCE
ORDER BY TOTAL_REVENUE DESC
LIMIT 5;


-- 2) What is the overall delivery performance?
SELECT * 
FROM V_DELIVERY_PERFORMANCE;


-- 3) How does late deliveries affect customers?
SELECT * 
FROM V_DELIVERY_VS_REVIEW;


-- 4) Which payment method is most preffered by customers?
SELECT * 
FROM V_PAYMENT_ANALYSIS
ORDER BY TOTAL_PAYMENT_VALUE DESC;


-- 5) What is the monthly sales trend (LAST  6 MONTHS)?
SELECT * 
FROM V_MONTHLY_SALES
ORDER BY MONTH DESC
LIMIT 6;

-- 6) Which categories have high revenue but lower average price?
SELECT CATEGORY, TOTAL_REVENUE, AVG_PRICE
FROM V_CATEGORY_PERFORMANCE
WHERE TOTAL_REVENUE > 500000
ORDER BY AVG_PRICE ASC
LIMIT 10;