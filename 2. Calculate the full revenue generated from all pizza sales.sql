-- 2. Calculate the full revenue generated from all pizza sales.

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            4) AS total_sales_revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;
