-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(pizzas.price * orders_details.quantity),
            0) AS Grand_total
FROM
    pizzas
		JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id