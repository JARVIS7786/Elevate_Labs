show databases;
create database sales;
use sales;
show tables;
CREATE TABLE online_sales (
    transaction_id INT,
    date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(255),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(12,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);
SHOW VARIABLES LIKE 'secure_file_priv';
LOAD DATA INFILE  'C:/ProgramData/MySQL/MySQL Server 9.3/Uploads/Online Sales Data.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM
    online_sales
GROUP BY
    month
ORDER BY
    month;
    
SELECT
    YEAR(date) AS order_year,
    MONTH(date) AS order_month,
    DATE_FORMAT(date, '%Y-%m') AS year__month,   
    SUM(total_revenue) AS total_revenue,
    COUNT(DISTINCT transaction_id) AS total_orders
FROM
    online_sales
GROUP BY
    YEAR(date), MONTH(date)     
ORDER BY
    order_year, order_month;
    SET SESSION sql_mode = '';

