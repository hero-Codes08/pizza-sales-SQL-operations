-- 10. Identify the top 3 pizza types contributing the most to total revenue.
SELECT 
    pizza_types.name,
    SUM(order_details.quantity * pizzas.price) AS 'revenue from each pizza type'
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY 'revenue from each pizza type' DESC
LIMIT 3;
    