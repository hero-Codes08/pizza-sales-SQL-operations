-- 8. Analyze pizza orders by category to understand customer preferences.

SELECT 
    pizza_types.category, COUNT(pizza_types.name)
FROM
    pizza_types
GROUP BY category;