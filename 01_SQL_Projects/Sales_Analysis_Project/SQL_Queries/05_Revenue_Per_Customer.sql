SELECT 
    c.customer_id,
    c.name,
    SUM(oi.quantity * p.price) AS total_revenue
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.name
ORDER BY total_revenue DESC;
