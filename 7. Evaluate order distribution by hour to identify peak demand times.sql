-- 7. Evaluate order distribution by hour to identify peak demand times.
SELECT 
    HOUR(order_time), COUNT(orders.order_id)
FROM
    orders
GROUP BY HOUR(order_time);