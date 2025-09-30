CREATE DATABASE salesdb;
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);


SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity * price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM sales
WHERE EXTRACT(YEAR FROM order_date) = 2024
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY year, month
LIMIT 12;