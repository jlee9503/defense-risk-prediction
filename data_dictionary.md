# 📘 Data Dictionary

This document describes the structure and meaning of each dataset used in the Defense Procurement Risk Forecasting project.

---

## 📁 contracts.csv

**Description:** Simulated dataset of 5,000+ government contracts awarded to various suppliers.

| Column Name                | Data Type   | Description |
|----------------------------|-------------|-------------|
| contract_id                | String      | Unique identifier for each contract (e.g., CTR00001) |
| supplier_id                | String      | Foreign key linking to the supplier who received the contract |
| contract_value_million     | Float       | Monetary value of the contract in millions of USD |
| contract_type              | Categorical | Type of contract: R&D, Production, Sustainment, or Tech Services |
| award_date                 | Date        | Date the contract was awarded |
| expected_duration_months   | Integer     | Expected duration of the contract in months |
| status                     | Categorical | Current contract status: active, completed, delayed, or terminated |

---

## 📁 suppliers.json

**Description:** Simulated performance metrics for suppliers in the contracts dataset.

| Column Name            | Data Type | Description |
|------------------------|-----------|-------------|
| supplier_id            | String    | Unique identifier for each supplier (matches `supplier_id` in contracts) |
| supplier_name          | String    | Generated company name |
| past_contracts         | Integer   | Number of previous contracts the supplier has completed |
| average_delay_days     | Integer   | Average number of days contracts were delivered late |
| compliance_issues      | Integer   | Number of compliance violations reported for the supplier (0–4) |

---

## 📁 delays.csv

**Description:** Subset of delayed contracts from `contracts_large.csv`, including actual delay durations.

| Column Name              | Data Type | Description |
|--------------------------|-----------|-------------|
| contract_id              | String    | Unique contract ID (same as in `contracts_large.csv`) |
| supplier_id              | String    | Supplier linked to the delayed contract |
| contract_value_million   | Float     | Contract value in millions |
| contract_type            | Categorical | Type of delayed contract |
| award_date               | Date      | Date awarded |
| expected_duration_months | Integer   | Projected duration of contract |
| status                   | String    | Set to “delayed” |
| delay_days               | Integer   | Number of days the contract was delayed past original deadline |
