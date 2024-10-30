-- 4.Determine the most popular size selected in pizza orders.

SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS total_order_of_size
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size
ORDER BY total_order_of_size DESC
LIMIT 1;