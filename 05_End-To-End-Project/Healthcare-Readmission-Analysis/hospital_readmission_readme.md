# 🏥 Hospital Readmission Analysis Project

**Objective:**
Analyze hospital patient data to identify **key factors driving readmissions**, segment **high-risk patients**, and provide actionable insights for reducing **30-day readmissions**. This project is a **pure data analytics workflow** using Python, SQL, and Power BI (no machine learning).

---

## 📂 Dataset

- Source: [Kaggle – Diabetes 130-US hospitals for years 1999-2008](https://www.kaggle.com/datasets)
- Entries: 101,766 patient encounters
- Features: 50 columns including patient demographics, lab results, medications, and hospital stay information
- Preprocessing:
  - Replaced missing values (`?`) with `NaN`
  - Dropped columns with >50% missing data (`weight`, `payer_code`, `medical_specialty`)
  - Focused on **key features**: age, lab tests, medications, treatment history, insulin usage, procedures, and hospital stay

---

## 🔹 Workflow

### 1️⃣ Data Cleaning
- Removed unnecessary columns  
- Handled missing values  
- Encoded categorical features (age, insulin status)  

### 2️⃣ Exploratory Data Analysis (EDA)
- **Numerical features**: time_in_hospital, num_medications, num_procedures, num_lab_procedures, number_emergency  
- **Categorical features**: age, gender, insulin, medication usage  
- Identified correlations and feature interactions  
- Observations:
  - Patients with **longer stays** have **more medications and procedures**  
  - Age group **60–80** has higher readmission rates  
  - Patients without insulin but high treatment intensity also have elevated readmission risk

### 3️⃣ High-Risk Patient Segmentation
- Combined **numerical + categorical features** into a risk score  
- Created a **binary flag `high_risk_readmission`** for <30-day readmissions  
- Features used:
  - `age_group`, `insulin_status`, `time_in_hospital`, `num_medications`, `num_procedures`  

```python
# Example columns in final table
patient_nbr | age_group | insulin_status | time_in_hospital | num_medications | num_procedures | high_risk_readmission
```

### 4️⃣ SQL & Power BI Ready
- The final table is structured for **SQL queries and dashboard visualizations**  
- Power BI visualizations can include:
  - Heatmaps for `time_in_hospital` vs `num_medications` vs `<30-day readmission`  
  - Bar charts for age group distribution among high-risk patients  
  - Pie charts for insulin usage among high-risk patients

---

## 📊 Key Insights

1. **Treatment intensity drives readmission risk**  
   - Longer stays + more medications/procedures → higher readmission  

2. **Age is a strong confounding factor**  
   - Patients 60–80 are more likely to be readmitted  

3. **Insulin usage impacts readmission probability**  
   - Patients on `Up` or `Down` insulin trends show higher risk  

4. **High-risk segmentation enables proactive interventions**  
   - Hospitals can identify patients for follow-up to reduce <30-day readmissions

---

## ⚡ Outcome / Business Impact

- Provides actionable insights for hospital administrators  
- Supports decision-making to **reduce readmission rates** and **improve patient care**  
- Demonstrates **data-driven hospital analytics skills** using Python, SQL, and Power BI

---

## 🛠 Tools & Libraries

- Python: `pandas`, `numpy`  
- SQL: Aggregation queries for risk segmentation  
- Power BI: Interactive dashboards for visualizing high-risk patients

---

## 📂 Project Structure

```
Hospital_Readmission_Analysis/
├── data/                  # Raw and cleaned datasets
├── notebooks/             # Python analysis & EDA
├── sql_queries/           # SQL scripts for aggregations
├── powerbi/               # Power BI dashboards
└── README.md              # Project documentation
```

