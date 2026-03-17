-- Total revenue
SELECT SUM(Revenue) AS total_revenue
FROM ecommerce_data;

-- Top 10 Products
SELECT Description,
       SUM(Revenue) AS total_sales
FROM ecommerce_data
GROUP BY Description
ORDER BY total_sales DESC
LIMIT 10;

-- Sales by Country
SELECT Country,
       SUM(Revenue) AS total_sales
FROM ecommerce_data
GROUP BY Country
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT 
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS month,
    SUM(Revenue) AS total_sales
FROM ecommerce_data
GROUP BY month
ORDER BY month;