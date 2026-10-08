-- CUSTOMERS
COPY customer_data (
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;


-- ORDER ITEMS
COPY order_items (
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;


-- PAYMENTS
COPY order_payments (
    order_id,
    payment_sequential,
    payment_type,
    payment_installments,
    payment_value
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;


-- Products DELEIVERY
CREATE TABLE orders (
    order_id VARCHAR(32) PRIMARY KEY,
    customer_id VARCHAR(32) NOT NULL,
    order_status VARCHAR(20) NOT NULL,
    order_purchase_timestamp TIMESTAMP NOT NULL,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);

COPY orders (
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    order_estimated_delivery_date
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;


-- ORDER REVIEWS
CREATE TABLE order_reviews (
    review_id VARCHAR(32) NOT NULL,
    order_id VARCHAR(32) NOT NULL,
    review_score INTEGER NOT NULL CHECK (review_score BETWEEN 1 AND 5),
    review_creation_date TIMESTAMP NOT NULL
);

COPY order_reviews (
    review_id,
    order_id,
    review_score,
    review_creation_date
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_order_reviews_dataset.csv'
DELIMITER ','
CSV HEADER;


-- PRODUCTS DETAIL
CREATE TABLE products (
    product_id VARCHAR(32) PRIMARY KEY,
    product_category_name VARCHAR(100),
    product_weight_g INTEGER,
    product_volume NUMERIC(12,2)
);

COPY products (
    product_id,
    product_category_name,
    product_weight_g,
    product_volume
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;



-- SELLERS DATA
CREATE TABLE sellers (
    seller_id VARCHAR(32) PRIMARY KEY,
    seller_zip_code_prefix VARCHAR(10),
    seller_city VARCHAR(100),
    seller_state CHAR(2)
);
COPY sellers (
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/olist_sellers_dataset.csv'
DELIMITER ','
CSV HEADER;


-- CATEGORY TRANSLATION 
CREATE TABLE category_translation (
    product_category_name VARCHAR(100) PRIMARY KEY,
    product_category_name_english VARCHAR(100) NOT NULL
);

COPY category_translation (
    product_category_name,
    product_category_name_english
)
FROM 'D:/TOP_SECRETE/DATA ANALYTICS/Project_01/Olist_Data/product_category_name_translation.csv'
DELIMITER ','
CSV HEADER;


