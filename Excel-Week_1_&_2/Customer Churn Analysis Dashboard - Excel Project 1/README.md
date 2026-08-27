# Databel - Customer Churn Analysis Dashboard - Excel Project 1

![Databel Executive Overview](</Excel-Week_1_&_2/Images/1-Customer Churn Dashboard.PNG>)

## Introduction
Customer retention is one of the most vital metrics for telecom companies. This project explores the customer dataset of **Databel**—a telecom service provider—to analyze customer attrition, identify key churn drivers, and uncover patterns across demographic segments, contract types, international plans, and customer service interactions.

Using end-to-end data processing techniques in **Microsoft Excel**, this dashboard translates raw customer-level data into actionable business intelligence to help stakeholders mitigate churn and boost overall retention.

---

## Skills Showcased
- **Data Preparation & Cleaning:** Managed missing records, categorized data types, and transformed raw customer entries into aggregated summaries using Excel functions (`IF`, `VLOOKUP`, `SUMIFS`, `COUNTIFS`).
- **Data Modeling & Pivot Tables:** Built structured Data Models using multiple **Pivot Tables** to calculate summary metrics, cross-tabulations, and performance ratios.
- **Calculated Measures & Custom Fields:** Created explicit key metrics including `Churn Rate %`, `Total Customers`, `Churned Customers`, and `Avg Monthly Charges`.
- **Core Visualizations:** Developed a suite of charts—**Stacked Bar Charts**, **Donut Charts**, **Line Charts**, and **Column Charts**—to convey churn distributions clearly.
- **Geospatial Analysis:** Leveraged **Pivot Table** to highlight geographic churn variance across regions and states.
- **Interactive Dashboard Design:** Applied cohesive design principles with customized card KPIs, table, various charts and dynamic filters for seamless user navigation..

---

## Key Business Insights
- **Overall Attrition:** Databel experienced an overall **churn rate of ~26.5%** across 6,687 customers.
- **Contract Type Impact:** Customers on **Month-to-Month contracts** exhibited significantly higher churn compared to those on One-Year or Two-Year agreements.
- **International Plan Risk:** Users subscribed to an **International Plan without active international usage** showed elevated churn rates.
- **Customer Service Call Frequency:** A clear threshold exists where customers making **4 or more Customer Service calls** churn at a sharply higher rate.
- **Demographic Variance:** **Senior citizens** demonstrated higher churn propensity compared to younger demographic groups (Under 30).

---

## Dashboard Overview

### Page 1: Executive Overview & High-Level KPIs

![Executive Overview Dashboard](</Excel-Week_1_&_2/Images/1-Customer Churn Dashboard.PNG>)

This main dashboard serves as the central operational overview for executive management:
- **KPI Cards:** Displays macro-level metrics including *Total Customers*, *Total Churned Customers*, and *Overall Churn Rate %*.
- **Demographic & Behavioral Breakdown:** Examines churn by age groups, senior status, and group/family plans.
- **Geographic Distribution:** Integrates an interactive state-level map showing geographical churn hotspots across regions.

### Page 2: Service & Behavioral Churn Drivers

![Churn Analysis](</Excel-Week_1_&_2/Images/2-Churn Analysis.PNG>)

This deep-dive page breaks down operational churn triggers:
- **Service & Consumption Metrics:** Analyzes churn relative to *Data Usage (GB Download)*, *Extra Charges*, and *Customer Service Calls*.
- **Contract & Payment Method Correlation:** Compares churn rates across different billing arrangements, payment methods, and account tenure ranges.

### Page 3: Churn Reasons & Competitor Deep Dive

![Churn Reasons & Competitor Analysis](</Excel-Week_1_&_2/Images/3-Churn Pivots.PNG>)

This page provides a deep-dive analysis of customer departure drivers and competitive market pressure:
- **Granular Churn Reasons:** Visualizes every reported reason for customer loss, highlighting top drivers such as *Competitor offers (16.87%)*, *Better devices (16.54%)*, and *Support staff attitude (11.30%)*.
- **Competitor Churn Breakdown:** Leverages a **Donut Chart** to isolate competitor-related churn, revealing that *Better Offers (37.64%)* and *Better Devices (36.89%)* account for over 74% of competitive attrition.

---

## Project Architecture & Methodology
1. **Raw Data Ingestion (`Databel - Customer`):** Raw granularity dataset containing 6,687 unique customer accounts and 30 distinct attributes.
2. **Aggregated Transformation (`Databel - Aggregate`):** Cleaned and binned continuous numerical variables (e.g., account length, monthly charges, customer service calls) into discrete categorical groups for enhanced pivot table modeling.
3. **Data Summarization (`Customer Pivots` & `Churn Analysis`):** Structured pivot tables generating all necessary backend data points, reason distributions, and cross-tabulations[cite: 1].
4. **Dashboard Layout (`Overview`, `Churn Analysis`, & `Churn Pivots`):** Built interactive UI dashboards with dynamic slicers for fast, real-time slice-and-dice capability.
---

## Conclusion
This Excel project demonstrates how powerful standard spreadsheet tools can be when applying structured data analysis workflows. By transforming raw, unorganized customer records into intuitive visualizations and key performance indicators, decision-makers can proactively identify churn risks, target high-risk customer segments, and formulate targeted retention strategies.

---

## Author - Riaz Ud Din

This project is part of my portfolio, showcasing the Microsoft Excel skills such as Excel formulas, Pivot Tables, Vlookup, Data Cleaning, Data Preparation, and Data Visualizations essential for data analyst roles. If you have any questions, feedback, or would like to collaborate, feel free to get in touch!

### Stay Updated and Connected

For more content on data cleaning, data analysis, data visualizations and other data-related topics, make sure to follow me on linkedin:


- **LinkedIn**: [Connect with me professionally](https://www.linkedin.com/in/riaz-ud-din-0918a3271)


Thank you for your support, and I look forward to connecting with you!