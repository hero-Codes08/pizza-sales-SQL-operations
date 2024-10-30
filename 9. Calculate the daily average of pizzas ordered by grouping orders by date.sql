-- 9. Calculate the daily average of pizzas ordered by grouping orders by date.

SELECT 
    ROUND(AVG(quantity), 0) AS 'avg_orders_per_day'
FROM
    (SELECT 
        DATE(order_date), SUM(quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY order_date) AS order_qty;