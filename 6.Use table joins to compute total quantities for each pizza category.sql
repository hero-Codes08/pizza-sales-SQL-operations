-- 6.Use table joins to compute total quantities for each pizza category.

SELECT 
    SUM(order_details.quantity) AS quantity,
    pizza_types.category AS category
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY category
ORDER BY quantity DESC
;