SELECT customer_id, name, total_revenue, city
FROM (
    SELECT 
        customer_id,
        name,
        total_revenue,
        city,
        DENSE_RANK() OVER (
            PARTITION BY city 
            ORDER BY total_revenue DESC
        ) AS rnk
    FROM (
        SELECT 
            c.customer_id,
            c.name,
            c.city,
            SUM(oi.quantity * p.price) AS total_revenue
        FROM customers c
        JOIN orders o 
            ON c.customer_id = o.customer_id
        JOIN order_items oi 
            ON o.order_id = oi.order_id
        JOIN products p 
            ON oi.product_id = p.product_id
        GROUP BY c.customer_id, c.name, c.city
    ) AS customer_revenue
) AS ranked
WHERE rnk <= 2;