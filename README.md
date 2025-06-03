# Defense Procurement Risk Forecasting

This project simulates a data science pipeline for identifying risk in defense acquisition contracts. Inspired by real-world use cases in government and defense analytics, it demonstrates skills in data engineering, statistical modeling, automation, and dashboard design.

---

## 🔍 Problem Statement

Defense procurement often suffers from budget overruns, delays, and vendor risks. This project aims to use simulated acquisition data to build a machine learning pipeline that flags high-risk contracts based on past performance, supplier patterns, and contract size/timing.

---

## 🧰 Tools Used

- Python (Pandas, sqlalchemy, Pathlib)
- SQL (MS SQL Server)
- Matplotlib / Seaborn (for internal visualizations)
- Git + VS Code
- Docker (SQL Servcer Container)

---

## 📈 Pipeline Overview

1. **Data Ingestion:**  
   - Loads multiple data sources (CSV, JSON) simulating contract records, supplier history, and known delays.

2. **Data Cleaning + Feature Engineering:**  
   - Identify missing values and duplicates
   - Merge datasets using `supplier_id` and `contract_id`
   - Risk feature encoding (contract age, contract value per month, risk score)

3. **Exploratory Data Analysis:**  
   - Univariate
      - Categorical: `contract_type`, `compliance_issues`
      - Numeric: `contract_value_million`, `expected_duration_months`, `average_delay_days`, `delay_days`, `risk_score`, `value_per_month`, `contract_age_days`
   - Bivariate
      - Relationship between target variable (`risk_score`) and each feature

---

## 📁 Project Status

✅ Completed: Setup database, Explore & Clean dataset, Exploratory Data Analysis (EDA)
🚧 In Progress: Model Training and Evaluation

---
## 🧾 License

MIT License
