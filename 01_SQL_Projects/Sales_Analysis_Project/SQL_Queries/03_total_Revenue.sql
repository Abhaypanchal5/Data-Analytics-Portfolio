SELECT SUM(oi.quantity*p.price) AS Total_revenue 
from order_items oi 
    join products p 
        on oi.product_id = p.product_id 





