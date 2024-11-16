-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(total_orders), 0) AS average_pizza_ordered_per_day
FROM
    (SELECT 
        orders.order_date,
            SUM(orders_details.quantity) AS total_orders
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY order_date) AS order_quantity;