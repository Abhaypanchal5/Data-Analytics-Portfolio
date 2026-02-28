SELECT oi.order_id, SUM(oi.quantity*p.price) as Total_revenue_per_order
from order_items oi 
    join products p 
        on oi.product_id = p.product_id 
GROUP BY oi.order_id
ORDER BY Total_revenue_per_order DESC