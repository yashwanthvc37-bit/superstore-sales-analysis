# Sales Performance Analysis — Superstore

## Project Overview
Analysed 4 years of Superstore sales data (2014–2017) to identify 
underperforming regions, unprofitable product categories, and the 
root cause of profit loss.

## Tools Used
- Python (pandas) — Data cleaning
- SQL (PostgreSQL) — Data querying
- Excel — Pivot table analysis
- Power BI — Interactive dashboard

## Business Questions Answered
1. Which regions are underperforming?
2. Which product categories drive profit?
3. Is there a seasonal sales pattern?
4. What is causing negative profit?

## Key Findings
- Central region has the lowest profit margin at 7.92%
- Furniture category has only 2.49% margin despite high sales
- Tables sub-category loses $17,725 — worst performer
- Discounts above 30% always result in negative profit
- Texas loses $12,687 despite $87K in sales
- Sales peak every year in September, November and December

## Recommendation
Cap all discounts at 20% maximum. This single change would 
directly recover profit in the Central region, Furniture category 
and 10 loss-making states including Texas.

## Files in This Repository
| File | Description |
|---|---|
| `clean_superstore.csv` | Cleaned dataset |
| `superstore_analysis.xlsx` | Excel pivot analysis |
| `superstore_dashboard.pbix` | Power BI dashboard |
| `cleaning.ipynb` | Python cleaning code |
