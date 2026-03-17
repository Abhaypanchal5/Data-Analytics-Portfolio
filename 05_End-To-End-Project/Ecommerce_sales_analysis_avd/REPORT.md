# 📊 E-Commerce Sales Analysis Report
### End-to-End Data Analytics Project | Python · Pandas · SQL

---

## 📁 Project Overview

This project simulates a real-world data analyst engagement for an Indian e-commerce company. Starting from a raw, uncleaned dataset, the project covers the full analytics workflow — data cleaning, exploratory analysis, and SQL-based business querying — to surface actionable insights for business stakeholders.

| Detail | Info |
|---|---|
| **Dataset** | Synthetic E-Commerce Sales (India) |
| **Records** | 2,000 orders (post-cleaning) |
| **Period** | January 2022 – December 2024 |
| **Tools Used** | Python, Pandas, NumPy, SQL (MySQL) |
| **Files** | `Data_cleaning.ipynb`, `Analysis.ipynb`, `Analysis.sql` |

---

## 📂 Project Structure

```
ecommerce-sales-analysis/
│
├── Data/
│   ├── ecommerce_sales.csv          # Raw dataset
│   └── cleaned_ecommerce_data.csv   # Cleaned dataset
│
├── Data_cleaning.ipynb              # Null handling, deduplication, type fixing
├── Analysis.ipynb                   # Pandas EDA and business questions
├── Analysis.sql                     # SQL queries on cleaned data
└── REPORT.md                        # This file
```

---

## 🧹 Data Cleaning Summary

The raw dataset contained the following quality issues that were resolved before analysis:

| Issue | Column | Count | Fix Applied |
|---|---|---|---|
| Missing values | `customer_name` | 103 | Filled with `"Unknown"` |
| Missing values | `age` | 100 | Filled with **median** age |
| Missing values | `rating` | 102 | Filled with **mode** rating |
| Duplicate rows | All columns | 30 | Dropped with `drop_duplicates()` |
| Wrong data type | `order_date` | — | Converted to `datetime` |

**Final clean dataset: 2,000 rows × 16 columns**

---

## 📈 Key Business Insights

### 1. 💰 Overall Performance

| Metric | Value |
|---|---|
| Total Revenue | ₹23.65 Crore |
| Average Order Value | ₹1,18,256 |
| Overall Return Rate | 8.15% |
| Analysis Period | 3 Years (2022–2024) |

---

### 2. 🏙️ City-wise Revenue Performance

| Rank | City | Total Revenue |
|---|---|---|
| 🥇 1 | Mumbai | ₹3,42,67,662 |
| 🥈 2 | Kolkata | ₹3,26,50,460 |
| 🥉 3 | Bangalore | ₹2,97,98,842 |
| 4 | Pune | ₹2,97,86,290 |
| 5 | Chennai | ₹2,82,24,423 |
| 6 | Delhi | ₹2,76,95,879 |
| 7 | Ahmedabad | ₹2,72,00,462 |
| 8 | Hyderabad | ₹2,68,88,759 |

> **Insight:** Mumbai leads revenue but the gap between cities is narrow (~21%), suggesting relatively balanced demand across India. No single city is over-dependent.

---

### 3. 📦 Category Performance

| Category | Total Revenue | Share |
|---|---|---|
| Accessories | ₹9,43,88,073 | 39.9% |
| Computers | ₹4,98,42,590 | 21.1% |
| Audio | ₹4,83,98,438 | 20.5% |
| Mobile | ₹4,38,83,675 | 18.6% |

> **Insight:** Accessories dominate revenue at nearly 40%, driven by high-volume, repeat-purchase items like keyboards, mice, and chargers.

---

### 4. 🛍️ Top Products by Revenue

| Rank | Product | Revenue |
|---|---|---|
| 1 | Laptop | ₹2,72,78,541 |
| 2 | Keyboard | ₹2,68,07,495 |
| 3 | Speaker | ₹2,43,60,018 |
| 4 | Headphones | ₹2,40,38,420 |
| 5 | Charger | ₹2,35,79,165 |

> **Insight:** Laptops lead by revenue, but Keyboards — a low-cost accessory — rank second due to high purchase volume. This signals that volume strategy works as well as high-ticket items.

---

### 5. 🚩 Return Rate by Product — Red Flags

| Product | Return Rate | Status |
|---|---|---|
| Monitor | 10.50% | 🔴 Above 10% threshold |
| Mouse | 10.47% | 🔴 Above 10% threshold |
| Phone | 9.69% | 🟡 Near threshold |
| Headphones | 9.33% | 🟡 Near threshold |
| Speaker | 9.13% | 🟡 Near threshold |
| Charger | 7.22% | 🟢 Acceptable |
| Keyboard | 6.73% | 🟢 Acceptable |

> **Insight:** Monitor and Mouse exceed the 10% return rate threshold. Both also carry the lowest average ratings (2.93 and 3.02), confirming a direct link between product dissatisfaction and returns. These products need quality review or better product descriptions.

---

### 6. 💳 Payment Method Preferences

**Overall usage:**

| Payment Method | Orders |
|---|---|
| Debit Card | 434 (21.7%) |
| Net Banking | 420 (21.0%) |
| UPI | 394 (19.7%) |
| Credit Card | 388 (19.4%) |
| Cash on Delivery | 364 (18.2%) |

> **Insight:** Payment preferences are nearly evenly distributed — no single method dominates. This suggests the platform's multi-payment support is working well and all channels should be maintained.

---

### 7. 📅 Year-on-Year Revenue Trend

| Year | Revenue |
|---|---|
| 2022 | ₹8,03,40,118 |
| 2023 | ₹7,81,51,304 |
| 2024 | ₹7,80,21,354 |

> **Insight:** Revenue shows a slight declining trend from 2022 to 2024 (~2.9% dip). While not alarming, this warrants investigation into whether it's caused by seasonality, increased returns, or reduced order frequency.

---

### 8. ⭐ Average Rating by Product

| Product | Avg Rating |
|---|---|
| Monitor | 2.93 ⚠️ |
| Mouse | 3.02 |
| Phone | 3.02 |
| Speaker | 3.05 |
| Headphones | 3.23 |

> **Insight:** No product averages above 3.5 out of 5 — overall customer satisfaction is moderate across the board. Monitor is the most concerning at below 3.0.

---

## 🔍 SQL Analysis Highlights

The `Analysis.sql` file covers 11 business queries including:

- Basic filtering and aggregation
- `GROUP BY` with `HAVING` for conditional filtering
- `CASE WHEN` for return rate calculation
- Subqueries for above-average product identification
- `DENSE_RANK()` window function for city ranking

---

## 🛠️ Skills Demonstrated

- **Data Cleaning** — null handling, deduplication, type conversion
- **Exploratory Data Analysis** — groupby, aggregation, filtering, pivot tables
- **SQL Querying** — DDL/DML, window functions, subqueries, CASE WHEN
- **Business Thinking** — framing analysis around real stakeholder questions
- **Documentation** — structured, GitHub-ready project reporting

---

## 👤 Author

**Abhay Panchal**
BBA (IGNOU) | BMS (DU)
Aspiring Data Analyst | Python · SQL · Power BI · Excel

---

*This is a portfolio project built on a synthetic dataset for learning and demonstration purposes.*
