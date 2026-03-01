SELECT customer_id, name, total_revenue
FROM (
    SELECT 
        c.customer_id,
        c.name,
        SUM(oi.quantity * p.price) AS total_revenue,
        DENSE_RANK() OVER (ORDER BY SUM(oi.quantity * p.price) DESC) AS rnk
    FROM customers c
    JOIN orders o 
        ON c.customer_id = o.customer_id
    JOIN order_items oi 
        ON o.order_id = oi.order_id
    JOIN products p 
        ON oi.product_id = p.product_id
    GROUP BY c.customer_id, c.name
) AS ranked_customers
WHERE rnk = 1;