-- 5. Provide a ranked list of the top 5 pizzas by quantity ordered.

SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS total_order_count
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY total_order_count DESC
LIMIT 5;