-- 1. Assess the total number of orders placed over time.

SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;