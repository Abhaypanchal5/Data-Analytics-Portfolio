# 🛒 E-Commerce Customer Behavior Analysis (Python + Pandas)

## 📌 Project Overview

This project focuses on cleaning and analyzing messy e-commerce sales
data using Python and Pandas. The dataset contains 500+ rows with
intentionally messy data to simulate real-world business scenarios.

The goal is to perform: - Data Cleaning - Data Transformation -
Exploratory Data Analysis (EDA) - Business Insight Generation

------------------------------------------------------------------------

## 📂 Dataset Description

The dataset includes the following columns:

-   order_id → Unique order identifier
-   customer_id → Customer code
-   order_date → Mixed date formats
-   product_category → Product category
-   product_name → Product name (inconsistent formatting)
-   quantity → Units purchased (includes negative errors)
-   unit_price → Price per unit
-   discount_percent → Discount applied (contains missing values)
-   city → Customer city (contains missing values)
-   payment_method → Payment type

------------------------------------------------------------------------

## ⚠️ Data Issues (Intentional)

The dataset includes:

-   Mixed date formats
-   Missing values
-   Duplicate rows
-   Extra spaces in text columns
-   Uppercase/lowercase inconsistencies
-   Negative quantities (data errors)
-   Missing discount values

These issues simulate real-world messy business data.

------------------------------------------------------------------------

## 🧹 Cleaning Steps Performed

-   Checked dataset structure using df.info()
-   Identified missing values using df.isnull()
-   Removed duplicate rows
-   Standardized text columns (strip + lower case)
-   Converted order_date to datetime format
-   Handled negative quantities
-   Filled or handled missing discount and city values
-   Created new column: total_sales

------------------------------------------------------------------------

## 📊 Analysis Performed

-   Total Sales by Product Category
-   Monthly Sales Trend
-   Top Customers by Revenue
-   Sales by City
-   Payment Method Distribution

------------------------------------------------------------------------

## 📈 Tools & Libraries Used

-   Python
-   Pandas
-   Matplotlib

------------------------------------------------------------------------

## 🎯 Key Business Insights

-   Identified high-revenue product categories
-   Found peak sales months
-   Recognized top-performing customers
-   Detected data quality issues impacting business decisions

------------------------------------------------------------------------

## 🚀 How to Run the Project

1.  Download the dataset
2.  Open Jupyter Notebook
3.  Install required libraries: pip install pandas matplotlib
4.  Run the analysis notebook step by step

------------------------------------------------------------------------

## 💼 Portfolio Value

This project demonstrates: - Real-world data cleaning skills -
Business-oriented thinking - Analytical problem-solving - Python for
Data Analysis
