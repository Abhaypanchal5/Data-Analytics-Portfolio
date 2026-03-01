SELECT
    customer_id,
    name,
    order_month,
    monthly_revenue,
    previous_month_revenue,
    monthly_revenue - previous_month_revenue AS revenue_difference
FROM (
    SELECT
        customer_id,
        name,
        order_month,
        monthly_revenue,
        LAG(monthly_revenue) OVER (
            PARTITION BY customer_id
            ORDER BY order_month
        ) AS previous_month_revenue
    FROM (
        SELECT
            c.customer_id,
            c.name,
            DATE_FORMAT(o.order_date, '%Y-%m') AS order_month,
            SUM(oi.quantity * p.price) AS monthly_revenue
        FROM customers c
        JOIN orders o 
            ON c.customer_id = o.customer_id
        JOIN order_items oi 
            ON o.order_id = oi.order_id
        JOIN products p 
            ON oi.product_id = p.product_id
        GROUP BY 
            c.customer_id,
            c.name,
            order_month
    ) AS monthly_data
) AS final_result;

