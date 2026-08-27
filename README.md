# 📊 Data Analytics Projects Repository

Welcome to the **Data Analytics Projects** repository! This repository serves as a structured, end-to-end learning path and portfolio covering core tools used in modern data analytics: **Microsoft Excel**, **SQL (MySQL)**, and **Microsoft Power BI**. 

---

## 📁 Repository Structure

```text
DATA ANALYTICS PROJECTS/
│
├── 🟢 Excel-Week_1_&_2/
│   ├── Customer Churn Analysis Dashboard - Excel Project 1/
│   │   ├── 4-Databel - Customer Churn Analysis Dashboard.xlsx
│   │   ├── README.md
│   │   └── Images/
│   ├── Sales Data Analysis Dashboard - Excel Project 2/
│   │   ├── 5-Sales Data Analysis Dashboard March 2026.xlsx
│   │   └── README.md
│   ├── 1-Excel Topics.xlsx
│   ├── 2-Excel Topics.xlsx
│   └── 3-Pivot Table & Pivot Chart.xlsx
│
├── 🔵 SQL-Week_3_&_4/
│   ├── Mentor User Performance Analysis - SQL Project 2/
│   │   ├── Mentor User Performance Analysis - SQL Project 2.sql
│   │   ├── user_sub_sql_mentor06nov.csv
│   │   └── README.md
│   ├── Retail Sales Analysis - SQL Project 1/
│   │   ├── Retail Sales Analysis - SQL Project 1.sql
│   │   ├── SQL - Retail Sales Analysis_utf .csv
│   │   └── README.md
│   ├── SQL Script- Beginners to Advance for Data Analytics.sql
│   └── SQL-Practice Assignment.sql
│
└── 🟡 Power-BI-Month_2/
    ├── Power_BI_Dashboards/
    │   ├── Data_Jobs_v1/
    │   │   ├── Data_Jobs_Dashboard.pbix
    │   │   └── README.md
    │   └── Data_Jobs_v2/
    │       ├── Data Jobs Dashboard 2.0.pbix
    │       ├── README.md
    │       └── Images/
    ├── Power BI Practice.zip
    └── README.md
```

## 💻 Prerequisites & Environment Setup

To execute the scripts and view the dashboards, ensure you have installed:

* **Spreadsheets:** Microsoft Excel (2019 or Microsoft 365 recommended)
* **Database Management System:** MySQL Server 8.0+ along with MySQL Workbench or DBeaver
* **Business Intelligence Tool:** Microsoft Power BI Desktop (Latest version)
* **File Compression Utility:** 7-Zip, WinRAR, or standard OS zip extractor (for `Power BI Practice.zip`)

---

## 🚀 Step-by-Step Learning & Usage Roadmap

Follow this sequential, module-by-module path to progress from foundational concepts to advanced end-to-end analytical projects.

---

### 🟢 Phase 1: Microsoft Excel (Weeks 1 & 2)
**Directory:** `Excel-Week_1_&_2/`

#### Step 1: Foundational Practice Files
Start by opening and mastering the core exercises in the practice workbooks:

* **`1-Excel Topics.xlsx`**: Master lookup functions (`VLOOKUP`, `XLOOKUP`), conditional logic (`IF`, `AND`, `OR`), aggregation (`SUMIFS`, `COUNTIFS`), text manipulation, and statistical functions.
* **`2-Excel Topics.xlsx`**: Dive deeper into complex multi-condition calculations, data cleaning techniques, nested logical functions, and error handling (`IFERROR`).
* **`3-Pivot Table & Pivot Chart.xlsx`**: Practice dynamic data summarization, calculated fields, date/numeric grouping, slicer integration, dynamic sorting, and Pivot Chart visuals.

#### Step 2: Excel Analytics Projects
Once the practice files are completed, explore the two end-to-end projects:

* **Project 1: Customer Churn Analysis**
  * **Path:** `Excel-Week_1_&_2/Customer Churn Analysis Dashboard - Excel Project 1/`
  * **File:** `4-Databel - Customer Churn Analysis Dashboard.xlsx`
  * **Overview:** Analyzes telecom churn rates based on demographics, contract types, customer service interactions, and pricing plans using dynamic KPI cards, conditional formatting, slicers, and interactive visuals.
* **Project 2: Sales Data Analysis**
  * **Path:** `Excel-Week_1_&_2/Sales Data Analysis Dashboard - Excel Project 2/`
  * **File:** `5-Sales Data Analysis Dashboard March 2026.xlsx`
  * **Overview:** Evaluates monthly sales performance, regional revenue distribution, profit margins, and top product categories across dynamic dashboard layouts.

---

### 🔵 Phase 2: SQL Data Analytics (Weeks 3 & 4)
**Directory:** `SQL-Week_3_&_4/`

#### Step 1: SQL Fundamentals & Script Training
Open your preferred SQL client (e.g., MySQL Workbench or DBeaver) and execute:

* **`SQL Script- Beginners to Advance for Data Analytics.sql`**: Covers DDL (`CREATE`, `ALTER`, `DROP`), DML, filtering/sorting (`WHERE`, `LIKE`, `IN`, `BETWEEN`, `ORDER BY`), grouping/aggregations (`GROUP BY`, `HAVING`), multi-table joins (`INNER`, `LEFT`, `RIGHT`), CTEs, subqueries, and window functions (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `LAG`, `LEAD`).
* **`SQL-Practice Assignment.sql`**: Hands-on practice queries targeting real-world analytics scenarios to solidify query optimization and analytical logic.

#### Step 2: SQL Analytical Projects
Import the CSV datasets into your MySQL instance and run the corresponding project scripts:

* **Project 1: Retail Sales Analysis**
  * **Path:** `SQL-Week_3_&_4/Retail Sales Analysis - SQL Project 1/`
  * **Files:** `SQL - Retail Sales Analysis_utf .csv`, `Retail Sales Analysis - SQL Project 1.sql`
  * **Workflow:**
    1. Import `SQL - Retail Sales Analysis_utf .csv` into your database table.
    2. Run `Retail Sales Analysis - SQL Project 1.sql` to execute data cleaning (null checks), exploratory data analysis (EDA), demographic breakdowns, peak sales hour analysis, and top revenue category queries.
* **Project 2: Mentor User Performance Analysis**
  * **Path:** `SQL-Week_3_&_4/Mentor User Performance Analysis - SQL Project 2/`
  * **Files:** `user_sub_sql_mentor06nov.csv`, `Mentor User Performance Analysis - SQL Project 2.sql`
  * **Workflow:**
    1. Import `user_sub_sql_mentor06nov.csv` into your database table.
    2. Run `Mentor User Performance Analysis - SQL Project 2.sql` to calculate user daily activity, leaderboard rankings using window functions (`DENSE_RANK`), positive submission ratios, daily streak tracking, and user performance metrics.

---

### 🟡 Phase 3: Microsoft Power BI (Month 2)
**Directory:** `Power-BI-Month_2/`

#### Step 1: Power BI Foundation Training
1. Locate `Power BI Practice.zip` inside `Power-BI-Month_2/`.
2. Extract the archive contents and complete the practice exercise, focusing on:
   * **Dashboard Design:** Basics of PowerBI dashboards, KPI cards, and charts.

#### Step 2: Power BI Business Intelligence Projects
Open the completed `.pbix` reports in Power BI Desktop to inspect the calculations, data model, and visual designs:

* **Project 1: Data Jobs Dashboard 1.0**
  * **Path:** `Power-BI-Month_2/Power_BI_Dashboards/Data_Jobs_v1/`
  * **File:** `Data_Jobs_Dashboard.pbix`
  * **Overview:** Base analytical report analyzing global data market roles, salary distributions across job titles, experience levels, company sizes, and geographic locations.
* **Project 2: Data Jobs Dashboard 2.0 (Advanced)**
  * **Path:** `Power-BI-Month_2/Power_BI_Dashboards/Data_Jobs_v2/`
  * **File:** `Data Jobs Dashboard 2.0.pbix`
  * **Overview:** Advanced dashboard iteration featuring dynamic bookmark navigation, custom visual tooltips, UX/UI layout enhancements, custom DAX metrics for remote work analysis, and drill-through analytics.

---

## 📜 Sub-Directory Documentation

Each project folder contains its own dedicated `README.md` file with deeper documentation, key insights, schema details, and visualization previews:

* 📄 [Customer Churn Analysis README](Excel-Week_1_&_2/Customer%20Churn%20Analysis%20Dashboard%20-%20Excel%20Project%201/README.md)
* 📄 [Sales Data Analysis README](Excel-Week_1_&_2/Sales%20Data%20Analysis%20Dashboard%20-%20Excel%20Project%202/README.md)
* 📄 [Retail Sales Analysis SQL README](SQL-Week_3_&_4/Retail%20Sales%20Analysis%20-%20SQL%20Project%201/README.md)
* 📄 [Mentor User Performance Analysis SQL README](SQL-Week_3_&_4/Mentor%20User%20Performance%20Analysis%20-%20SQL%20Project%202/README.md)
* 📄 [Data Jobs Dashboard 1.0 README](Power-BI-Month_2/Power_BI_Dashboards/Data_Jobs_v1/README.md)
* 📄 [Data Jobs Dashboard 2.0 README](Power-BI-Month_2/Power_BI_Dashboards/Data_Jobs_v2/README.md)


## Author - Riaz Ud Din

This repository is part of my Data Analytics Portfolio, showcasing the Advance Excel, SQL, Power BI, Data Cleaning, Data Exploration, Data Analysis, and Data Visualization skills essential for data analyst roles. If you have any questions, feedback, or would like to collaborate, feel free to get in touch!

### Stay Updated and Connected

For more content on Excel, SQL, Power BI, data analysis, and other data-related topics, make sure to follow me on linkedin:


- **LinkedIn**: [Connect with me professionally](https://www.linkedin.com/in/riaz-ud-din-0918a3271)


Thank you for your support, and I look forward to connecting with you!