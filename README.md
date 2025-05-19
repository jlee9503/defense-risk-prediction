# Defense Procurement Risk Forecasting

This project simulates a data science pipeline for identifying risk in defense acquisition contracts. Inspired by real-world use cases in government and defense analytics, it demonstrates skills in data engineering, statistical modeling, automation, and dashboard design.

---

## 🔍 Problem Statement

Defense procurement often suffers from budget overruns, delays, and vendor risks. This project aims to use simulated acquisition data to build a machine learning pipeline that flags high-risk contracts based on past performance, supplier patterns, and contract size/timing.

---

## 🧰 Tools Used

- Python (Pandas, Scikit-learn, Requests)
- SQL (MS SQL Server)
- Tableau / Streamlit (for visualization)
- Git + VS Code
- Docker (SQL Servcer Container)
- Matplotlib / Seaborn (for internal visualizations)

---

## 📈 Pipeline Overview

1. **Data Ingestion:**  
   Loads multiple data sources (CSV, JSON) simulating contract records, supplier history, and known delays.

2. **Data Cleaning + Feature Engineering:**  
   - Vendor history scoring  
   - Risk feature encoding (contract size, category, timing)

3. **Model Training:**  
   - Classification model (Logistic Regression or Random Forest)  
   - Output: Probability of a contract being “high risk”

4. **Output Dashboard:**  
   Interactive dashboard displaying:
   - Top 10 high-risk active contracts
   - Model prediction confidence
   - Historical delay & overrun trends

5. **Automation Simulation:**  
   - Script-based refresh pipeline  
   - Example cron or scheduler setup (mocked)

---

## 📊 Example Visuals

(Add screenshots here of your dashboard or visualizations.)

---

## 📜 Sample Insights

- Contracts exceeding $5M with a vendor delay history >2 are 3.4x more likely to be flagged as high risk.
- R&D projects showed a 60% higher chance of timeline slippage than sustainment contracts.

---

## 🔒 Security Note

This project uses **open-source and simulated data only**. No actual government or proprietary datasets were used.

---

## 🧠 What I Learned

- Translating business risk concepts into model features
- Automating multi-source data workflows
- Communicating analytic findings to non-technical users via dashboards

---

## 📁 Project Status

✅ Completed: Modeling, Pipeline, Dashboard  
🚧 In Progress: Expanding classifier to include supplier fraud flagging

---

## 🧾 License

MIT License