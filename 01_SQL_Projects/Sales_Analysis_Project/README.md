# Ecommerce Sales Analysis SQL Project

## Project Overview
This project is a SQL-based analysis of a simulated e-commerce business. It explores sales trends, customer behavior, and product performance using realistic sample data. The goal is to demonstrate SQL skills including joins, aggregation, subqueries, window functions, and data-driven insights.

---

## Objective
- Identify top customers by total spending  
- Find the second highest spending customer  
- Analyze monthly revenue trends  
- Rank customers per city and identify high-value customers  
- Determine top-selling products and categories  
- Track customer spending growth using window functions  

---

## Database Schema & Data
The project uses four tables with proper relationships:

1. **customers** – Stores customer information  
   - `customer_id` (PK), `name`, `city`, `signup_date`  

2. **products** – Stores product catalog  
   - `product_id` (PK), `product_name`, `category`, `price`  

3. **orders** – Stores orders placed by customers  
   - `order_id` (PK), `customer_id` (FK), `order_date`  

4. **order_items** – Stores products included in each order  
   - `order_item_id` (PK), `order_id` (FK), `product_id` (FK), `quantity`  

All tables have **primary and foreign key constraints** to maintain relational integrity.

---

## Data Folder
Include CSV files in the `data/` folder:  
- `customers.csv`  
- `products.csv`  
- `orders.csv`  
- `order_items.csv`  

This allows anyone to load the data and run queries immediately.

---

## Queries Implemented
Some example SQL queries for analysis:

1. Total revenue across all orders  
2. Top customers by total spending  
3. Monthly revenue trend  
4. Top-selling products and categories  
5. Average order value per customer  
6. Customers with increasing monthly spending (LAG function)  
7. Rank customers by total spending per city (ROW_NUMBER / DENSE_RANK)  


---

## Skills Demonstrated
- SQL joins: INNER JOIN, LEFT JOIN  
- Aggregations: SUM(), COUNT(), AVG()  
- Subqueries and nested queries  
- Window functions: ROW_NUMBER(), DENSE_RANK(), LAG()  
- Data analysis and extracting business insights  
- Database design with relationships  

---

## Future Enhancements
- Add visualizations using Python (Matplotlib / Seaborn) or Excel  
- Connect to a real e-commerce API  
- Predictive analysis for next-month sales forecasts  
- Add more complex queries (like cohort analysis or customer segmentation)  