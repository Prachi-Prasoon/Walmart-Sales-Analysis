# Walmart-Sales-Analysis

End-to-end business analytics project analyzing Walmart retail sales data using **Python, PostgreSQL, SQL, and Power BI**.  
The project focuses on converting raw transactional data into **actionable business insights** through data cleaning, structured SQL analysis, and stakeholder-ready dashboards.

---

## Business Objective

The goal of this project is to:
- Understand customer behavior and payment preferences
- Identify high-performing and underperforming product categories
- Analyze time-based demand patterns
- Evaluate branch and city-level performance
- Support data-driven operational and strategic decisions

---

## Tools & Technologies

- Python (Pandas)
- PostgreSQL (SQLAlchemy, psycopg2)
- SQL (CTEs, Window Functions, Aggregations)
- Power BI
- Jupyter Notebook

---

## Dataset Overview

- ~10,000 transaction records
- 100 branches across 98 cities
- 6 product categories
- Invoice-level sales data with revenue, quantity, ratings, profit margin, and time attributes

---

## Project Workflow

### 1. Data Cleaning & Feature Engineering
- Removed duplicates and missing values
- Standardized data types
- Created derived metrics (total sales)
- Engineered time-based features (hour, weekday, month, shift, year)

### 2. SQL-Based Business Analysis
- Loaded processed data into PostgreSQL
- Answered business questions using structured SQL queries
- Analyzed customer behavior, category performance, demand trends, and KPIs

### 3. Business Insights & Reporting
- Converted SQL outputs into grouped business insights
- Identified revenue drivers, operational patterns, and risk areas
- Documented findings in an executive-friendly business report

### 4. Data Visualization
- Built interactive Power BI dashboards
- Visualized KPIs, trends, and performance comparisons
- Designed dashboards for quick stakeholder interpretation

---

## Key Business Insights

- Digital payment methods dominate transactions, with branch-level variation
- Revenue and profit are concentrated in a small number of product categories
- Medium-value transactions contribute the highest share of revenue
- Sales peak during afternoon and evening hours
- Some branches show significant year-over-year revenue decline
- Profitability varies notably across cities

---

## Business Recommendations

- Align staffing and inventory with peak demand periods
- Focus promotions on high-revenue and high-margin categories
- Encourage digital payments to improve checkout efficiency
- Investigate underperforming branches for corrective action
- Use city-level profitability insights for pricing and expansion decisions

---

## Repository Structure

Walmart-Sales-Analysis/
│
├── data/
│ ├── raw/
│ │ └── Walmart.csv
│ │
│ └── processed/
│ └── walmart_featured_data.csv
│
├── notebooks/
│ ├── 01_data_cleaning_feature_engineering.ipynb
│ ├── 02_sql_integration_analysis.ipynb
│ └── 03_visual_analysis.ipynb
│
├── sql/
│ ├── 01_basic_data_understanding.sql
│ ├── 02_customer_payment_insights.sql
│ ├── 03_product_category_profit_analysis.sql
│ ├── 04_time_based_sales_trends.sql
│ ├── 05_advanced_kpis_strategic_insights.sql
│ └── SQL_queries_merged.sql
│
├── dashboards/
│ ├── Walmart_Sales_Analysis_Dashboard.pbix
│ └── Dashboard_Insights.pdf
│ 
├── reports/
│ ├── Walmart_Business_Insights_Report.pdf
│ └── Walmart_SQL_Analysis_Details.pdf
│
└── README.md


---

## How to Navigate

- **Recruiters / Managers** → `reports/Walmart_Business_Insights_Report.pdf`
- **Stakeholders** → `Walmart_Sales_Analytics_Dashboard.pbix` or `Dashboard_Insights.pdf`
- **Technical Reviewers** → `sql/` and `notebooks/`

---

## Conclusion

This project demonstrates a complete **Business Analyst workflow**, from raw data preparation to executive-level insights and dashboards.  
It highlights how structured analysis can support operational efficiency, revenue growth, and strategic decision-making in a retail business.