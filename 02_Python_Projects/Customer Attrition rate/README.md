# 👥 Employee Attrition Analysis

> **HR Analytics Project** | End-to-End Data Analysis | Python + Power BI

---

## 📋 Project Overview

Employee attrition is one of the most costly challenges for any organization. This project analyzes a 300-employee dataset to uncover **why employees leave** and **which groups are most at risk** — using Python for data exploration and Power BI for visual reporting.

**Core Question:** *What factors drive employee attrition, and how can the company reduce it?*

---

## 📦 Dataset

| Attribute | Details |
|---|---|
| **Records** | 300 employees |
| **Columns** | 15 |
| **Target Variable** | `Attrition` (Yes / No) |
| **Format** | CSV |

### Columns

| Column | Description |
|---|---|
| `EmployeeID` | Unique identifier |
| `Age` | Employee age (22–58) |
| `Gender` | Male / Female |
| `Department` | Sales, HR, Engineering, Marketing, Finance |
| `JobRole` | Role within the department |
| `EducationField` | Field of study |
| `YearsAtCompany` | Tenure in years |
| `MonthlyIncome` | Monthly salary |
| `JobSatisfaction` | Rating 1 (Low) to 4 (High) |
| `OverTime` | Whether employee works overtime (Yes / No) |
| `DistanceFromHome` | Distance in km |
| `PercentSalaryHike` | Last salary hike % |
| `WorkLifeBalance` | Rating 1 (Low) to 4 (High) |
| `NumCompaniesWorked` | Number of previous employers |
| `Attrition` | Target — whether employee left (Yes / No) |

---

## 🔍 Analysis Performed

### 1. Data Exploration
- Loaded and inspected dataset shape and data types
- Checked for null values and duplicate records

### 2. Attrition Analysis
- Overall attrition count and percentage
- Attrition rate broken down by department
- Average monthly income — employees who left vs stayed
- Overtime impact on attrition likelihood

---

## 📊 Key Findings

- **50% attrition rate** across the 300-employee dataset
- Employees with **low job satisfaction (1–2)** leave at a significantly higher rate
- **Overtime workers** account for 52% of attrition cases
- Employees who left earned a **lower average monthly income** than those who stayed
- **Short-tenure employees** (under 2 years) are at the highest risk of leaving

---

## 📈 Power BI Dashboard

The dashboard covers 6 key visuals:

- Average Monthly Income by Department
- Job Satisfaction by Attrition (pie chart)
- Average Years at Company by Attrition
- Attrition Rate by OverTime
- Attrition Number by Job Role
- Monthly Income by Attrition
- Total Employee KPI card with Age slicer

---

## 🛠️ Tools Used

| Tool | Purpose |
|---|---|
| Python 3.14 | Data loading, cleaning, analysis |
| pandas | Data manipulation and groupby analysis |
| Jupyter Notebook | Interactive analysis environment |
| Power BI | Dashboard and visualization |

---

## 📁 Repository Structure

```
├── data/
│   └── employee_attrition.csv
├── notebooks/
│   └── Employee.ipynb
├── dashboard/
│   └── dashboard.png
└── README.md
```

---

## 💡 Recommendations

Based on the analysis, the following actions could help reduce attrition:

1. **Review compensation** for low-income brackets — salary is a strong attrition driver
2. **Monitor overtime** — over half of employees who left were working overtime
3. **Improve onboarding** for new joiners — tenure under 2 years shows highest risk
4. **Job satisfaction surveys** — employees rating 1–2 need immediate manager attention

---

> *Dataset is synthetically generated for analytical and portfolio purposes.*
