# 🏎️ Formula 1 Race Analytics — End-to-End Data Project
### Python · Pandas · PostgreSQL · SQL Window Functions

---

## 📌 Project Overview

This project simulates the work of a **Data Analyst at an F1 team's strategy division**. Starting from raw race data, it covers the complete analytics pipeline — data cleaning, exploratory analysis in Python, and advanced SQL querying — to surface insights that directly impact race strategy, driver selection, and team performance decisions.

| Detail | Info |
|---|---|
| **Dataset** | Synthetic F1 Race & Lap Data (2018–2023) |
| **Records** | 50,250 lap-level + 3,000 race-level entries |
| **Seasons Covered** | 2018 · 2019 · 2020 · 2021 · 2022 · 2023 |
| **Circuits** | 25 Grand Prix circuits across 4 regions |
| **Drivers** | 20 drivers across 10 teams |
| **Tools Used** | Python, Pandas, NumPy, PostgreSQL, SQL |

---

## 📂 Project Structure

```
f1-race-analytics/
│
├── Data/
│   ├── f1_race_data.csv          # Raw race-level dataset
│   ├── f1_lap_data.csv           # Raw lap-level dataset (50K rows)
│   ├── f1_race_cleaned.csv       # Cleaned race dataset
│   └── f1_lap_cleaned.csv        # Cleaned lap dataset
│
├── Data_Cleaning.ipynb           # Null handling, deduplication, type fixes
├── Analysis.ipynb                # Pandas EDA — 10 analytical tasks
├── Analysis.sql                  # PostgreSQL queries — advanced SQL tasks
└── README.md                     # This file
```

---

## 🧹 Data Cleaning Summary

| Issue | Column | Count | Fix Applied |
|---|---|---|---|
| Missing values | `race_time_seconds` | 327 | Filled with median |
| Missing values | `avg_lap_time_seconds` | 91 | Filled with median |
| Missing values | `lap_time_seconds` | 2,368 | Filled with median |
| Duplicate rows | `f1_race_data` | 15 | Dropped |
| Duplicate rows | `f1_lap_data` | 250 | Dropped |
| Wrong data type | `race_date` | — | Converted to datetime |

**Post-cleaning: 3,000 race entries · 50,000 lap entries — zero nulls, zero duplicates**

---

## 📊 Key Insights & Visual Summaries

---

### 1. 🏆 Season Champions (2018–2023)

```
Season  Champion           Points
──────────────────────────────────
2018    Carlos Sainz         183
2019    Pierre Gasly         188
2020    Carlos Sainz         175
2021    Max Verstappen       166
2022    Logan Sargeant       174
2023    Guanyu Zhou          202
```

> **F1 Benefit:** Tracking season-by-season champions helps teams assess championship competitiveness and benchmark where performance gaps exist across seasons.

---

### 2. 📈 Total Points — Top 5 Drivers (All Seasons Combined)

```
Driver               Points
────────────────────────────────────────────
Carlos Sainz    ████████████████████  861
Guanyu Zhou     ████████████████░░░░  814
Logan Sargeant  ███████████████░░░░░  795
Yuki Tsunoda    ███████████████░░░░░  786
George Russell  ██████████████░░░░░░  765
```

> **F1 Benefit:** Career points totals are used during contract negotiations and driver market evaluations — a driver consistently scoring points across seasons commands a higher market value.

---

### 3. 🏅 Race Wins — Top 5 Drivers

```
Driver               Wins
──────────────────────────────────────
Carlos Sainz    ███████████  11
Pierre Gasly    ██████████   10
Valtteri Bottas ██████████   10
Guanyu Zhou     ██████████   10
Logan Sargeant  █████████     9
```

> **F1 Benefit:** Win counts are a primary KPI for team principals when evaluating race pace and driver racecraft under pressure.

---

### 4. 🔧 DNF Rate by Team — Reliability Report

```
Team              DNF Rate
─────────────────────────────────────────
McLaren         ████████████████░  9.33%  ⚠️
Alpine          ████████████████░  9.33%  ⚠️
AlphaTauri      ███████████████░░  8.67%
Alfa Romeo      ███████████████░░  8.67%
Haas            ███████████████░░  8.44%
Red Bull Racing ██████████████░░░  8.33%
Williams        ██████████████░░░  8.00%
Ferrari         ██████████████░░░  8.00%
Aston Martin    █████████████░░░░  7.33%
Mercedes        ███████████░░░░░░  6.00%  ✅
```

> **F1 Benefit:** DNF rate is a direct measure of **mechanical reliability**. McLaren and Alpine at 9.33% means nearly 1 in 10 race entries ends in retirement — a major area for engineering focus. Mercedes at 6% sets the reliability benchmark.

---

### 5. 🏁 DNF Rate by Circuit — Danger Zones

```
Circuit           DNF Rate
──────────────────────────────
Netherlands       13.33%  🔴
Japan             11.67%  🔴
Qatar             11.67%  🔴
United States     10.83%  🟠
Saudi Arabia      10.00%  🟠
```

> **F1 Benefit:** High DNF circuits inform **pre-race preparation strategy** — teams allocate extra engineering resource and run additional reliability checks before these specific race weekends.

---

### 6. 🛞 Tyre Strategy — Compound Usage & Performance

```
Compound    Usage Share    Avg Points Scored
─────────────────────────────────────────────
Medium       50.4%              4.81  ✅
Hard         19.4%              4.80
Soft         30.2%              4.69
```

> **F1 Benefit:** Medium compound dominates as the starting tyre of choice across all conditions — and it delivers the highest average points. This validates the industry-standard strategy of opening on Mediums. Soft tyres, despite being faster in qualifying, yield slightly fewer points in races, suggesting degradation hurts race-day performance.

---

### 7. ☔ Pit Stop Strategy — Weather Impact

```
Weather     Avg Pit Stops
──────────────────────────
Dry         1.96
Mixed       1.96
Wet         1.92
```

> **F1 Benefit:** Wet conditions actually see slightly fewer pit stops on average — likely due to safety car periods compressing natural pit windows. Strategy teams can use this to model pit stop timing under different weather forecasts.

---

### 8. ⚡ Fastest Laps — Team Breakdown

```
Team               Fastest Laps
─────────────────────────────────────────
Haas            █████████████████████  45
Alfa Romeo      ██████████████████░░░  39
Mercedes        ███████████████░░░░░░  32
AlphaTauri      ██████████████░░░░░░░  31
Williams        █████████████░░░░░░░░  29
```

> **F1 Benefit:** Fastest lap earns a bonus championship point. Teams with high fastest lap counts have strong **end-of-race pace** — useful for planning late-race tyre change strategies to hunt the extra point when a position change is unlikely.

---

### 9. 📐 Positions Gained from Grid — Racecraft Index

```
Driver              Avg Positions Gained
──────────────────────────────────────────
Fernando Alonso     +0.57  🔼
Lewis Hamilton      +0.45  🔼
Mick Schumacher     +0.43  🔼
Pierre Gasly        +0.41  🔼
Sergio Perez        +0.31  🔼
```

> **F1 Benefit:** Positions gained from grid to finish is a pure measure of **racecraft** — independent of car pace. Alonso consistently gaining positions from his starting slot highlights overtaking ability and tyre management, key traits for wet-weather or safety car restarts.

---

### 10. 🗺️ Circuit Coverage — Regional Distribution

```
Region          Circuits
─────────────────────────────
Europe          ████████████  9
Americas        ███████       6
Asia Pacific    ████████      6
Middle East     ████          4
```

> **F1 Benefit:** Europe hosts the most races — understanding regional distribution helps teams plan **logistics, freight scheduling, and factory downtime** across the calendar.

---

## 🔍 SQL Analysis — Advanced Queries Performed

| Query | Technique Used |
|---|---|
| Cumulative championship points per driver | `SUM() OVER (PARTITION BY ... ORDER BY ...)` |
| Podium finish streaks | `LAG()` window function |
| Team dominance index with season ranking | CTE + `RANK() OVER()` |
| Head-to-head teammate comparison | Self `JOIN` on same race + team |

---

## 💡 How F1 Teams Benefit From This Analysis

| Insight | Business Application |
|---|---|
| DNF rates by team | Engineering prioritisation — which systems need reliability work |
| DNF rates by circuit | Pre-race prep — extra checks before high-DNF venues |
| Tyre compound performance | Race strategy — validates medium as optimal starting compound |
| Positions gained metric | Driver scouting — identifies racecraft beyond raw pace |
| Fastest lap counts | Late-race strategy — plan tyre changes to target bonus point |
| Weather vs pit stops | Strategy modelling — pit window planning under rain forecasts |
| Season standings tracker | Championship management — points gap monitoring per round |

---

## 🛠️ Skills Demonstrated

- **Data Cleaning** — null handling, deduplication, datetime conversion
- **Exploratory Data Analysis** — groupby, agg, window logic in pandas
- **Advanced SQL** — CTEs, window functions, self joins, CASE WHEN
- **Sports Domain Knowledge** — F1 strategy, championship points, tyre compounds
- **Business Thinking** — framing every insight around a real team decision
- **Documentation** — structured, GitHub-ready project reporting

---

## 👤 Author

**Abhay Panchal**
BBA (IGNOU) · BMS (DU)
Aspiring Data Analyst · Python · SQL · Power BI · Excel

*Portfolio:* [GitHub](#) · *Location:* Ghaziabad, Delhi NCR

---

*This project is built on a synthetic dataset for portfolio and learning purposes. All driver/team names are real but data is simulated.*
