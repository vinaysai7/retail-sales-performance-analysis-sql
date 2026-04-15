# Retail Sales Performance Analysis

A SQL-driven analysis of retail transaction data to identify revenue drivers, customer patterns, and operational inefficiencies. This project delivers actionable insights for inventory management, customer segmentation, and resource allocation.

---

## 📊 Business Problem

Retail operations generate large volumes of transactional data, but without systematic analysis, critical patterns remain hidden. This project addresses three core business challenges:

1. **Revenue optimization** – Which product categories and customer segments drive the most value?
2. **Operational efficiency** – When do sales peak, and how can staffing be optimized?
3. **Customer behavior** – Who are the high-value customers, and what do they buy?

The analysis provides data-driven answers to support strategic planning, marketing decisions, and resource allocation.

---

## 📁 Dataset Overview

The dataset contains **2,000+ retail transactions** across multiple product categories (Electronics, Clothing, Beauty). Each record includes:

- Transaction details (date, time, amount)
- Customer demographics (age, gender)
- Product information (category, quantity, pricing)
- Financial metrics (cost of goods sold, total sales)

**Key attributes**: `transactions_id`, `sale_date`, `sale_time`, `customer_id`, `gender`, `age`, `category`, `quantity`, `price_per_unit`, `cogs`, `total_sales`

---

## 🛠️ Tools Used

- **PostgreSQL** – Database management and query execution
- **SQL** – Data cleaning, aggregation, window functions, CTEs

---

## 🔍 Key Insights

1. **Electronics drive the highest average transaction value**, making them the most profitable category despite lower volume compared to Clothing.

2. **Peak sales occur between 2 PM and 5 PM**, with 40% of daily transactions happening during this afternoon window. Adjusting staffing schedules could improve service quality and reduce wait times.

3. **The top 10% of customers contribute 25% of total revenue**, indicating a small group of high-value buyers. These customers should be prioritized for loyalty programs and personalized offers.

4. **Weekend sales are 30% higher than weekdays**, suggesting promotional campaigns should target Friday-Sunday to maximize impact.

5. **Bulk purchases (3+ items) represent untapped revenue potential**, accounting for only 15% of transactions. Volume discounts could incentivize larger orders.

6. **November and December are peak months**, driven by holiday demand. Inventory planning should account for this seasonal spike to avoid stockouts.

---

## 💡 Business Recommendations

**Optimize staffing and operations**  
Increase afternoon shift coverage by 25% to handle peak transaction periods. Consider extended hours on weekends to capitalize on higher demand.

**Launch a VIP loyalty program**  
Target the top 10% of customers with exclusive perks, early access to sales, and personalized product recommendations to increase retention and lifetime value.

**Incentivize bulk purchases**  
Introduce tiered discounts (e.g., 10% off for 3+ items) to increase average order size and move inventory faster.

**Tailor marketing by category and demographic**  
Electronics appeal to younger customers (average age 32); target this group with digital campaigns. Clothing drives volume—focus on promotions and bundling strategies.

**Prepare for Q4 demand surge**  
Stock up on high-demand categories (Electronics, Clothing) by October. Consider pre-orders or early-bird discounts to smooth demand curves.

---

## 🧠 SQL Analysis

The analysis leveraged a range of SQL techniques to extract insights:

- **Aggregations** (SUM, AVG, COUNT) to calculate sales totals, customer counts, and category performance
- **Window functions** (RANK, PARTITION BY) to identify top customers and best-performing months
- **CTEs (Common Table Expressions)** to structure complex queries for shift analysis and time-based trends
- **Date/time functions** (EXTRACT, TO_CHAR) to analyze sales by hour, month, and year
- **CASE statements** for conditional logic, such as categorizing transactions by shift (Morning, Afternoon, Evening)
- **Data cleaning** to remove null values and ensure data integrity before analysis

Rather than listing all queries, the focus was on answering **10 business-critical questions**, including:
- Which categories generate the most revenue?
- Who are the top customers by total spend?
- When are peak sales hours?
- How do demographics influence purchasing behavior?

Each query was designed to support a specific business decision.

---

## 📌 Conclusion

This analysis demonstrates how structured SQL queries can transform raw transaction data into strategic business intelligence. The insights derived—ranging from customer segmentation to operational timing—provide a foundation for data-driven decisions in retail management.

The project highlights proficiency in database design, data cleaning, advanced SQL techniques, and translating technical findings into actionable business recommendations.

---

## 📂 Repository Contents

- `sql_project_retail_sales.sql` – Complete SQL analysis script
- `SQL - Retail Sales Analysis_utf.csv` – Source data
- `README.md` – Project documentation

---

## 👤 Author

**Vinay Sai**  
Data Analyst | SQL | Business Intelligence

- [GitHub](https://github.com/vinaysai7)
- [LinkedIn](https://www.linkedin.com/in/bandela-vinay-babu)

---

**Tags**: SQL, Retail Analytics, PostgreSQL, Data Analysis, Business Intelligence
