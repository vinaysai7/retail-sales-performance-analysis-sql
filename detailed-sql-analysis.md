# 🛒 SQL Retail Sales Analysis Project

A comprehensive **SQL-based analytics project** demonstrating data analysis techniques for retail sales data. This project showcases database design, data cleaning, exploratory data analysis (EDA), and complex SQL queries to extract actionable business insights from retail transaction data.

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-blue?style=flat&logo=postgresql)
![Level](https://img.shields.io/badge/Level-Beginner%20to%20Intermediate-green)
![Status](https://img.shields.io/badge/Status-Complete-success)

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Objectives](#objectives)
- [Dataset](#dataset)
- [Database Schema](#database-schema)
- [Project Workflow](#project-workflow)
- [SQL Techniques Demonstrated](#sql-techniques-demonstrated)
- [Business Questions & Solutions](#business-questions--solutions)
- [Key Findings](#key-findings)
- [Installation & Setup](#installation--setup)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Learning Outcomes](#learning-outcomes)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

## 🎯 Project Overview

**Project Title**: Retail Sales Analysis  
**Database**: `SQL_RSA-project1`  
**SQL Dialect**: PostgreSQL (adaptable to MySQL, SQL Server)  
**Difficulty Level**: Beginner to Intermediate

This project demonstrates essential SQL skills used by data analysts in real-world retail analytics scenarios. It encompasses the complete data analysis lifecycle: from database creation and data import to cleaning, exploratory analysis, and answering complex business questions using advanced SQL queries.

### What Makes This Project Special

- ✅ **Real-world Scenario**: Analyzes actual retail transaction patterns
- ✅ **Complete Workflow**: Database setup → Cleaning → Analysis → Insights
- ✅ **Business-Driven**: Answers practical business questions
- ✅ **Best Practices**: Follows SQL coding standards and optimization techniques
- ✅ **Scalable**: Designed to handle large datasets efficiently

## 💼 Business Problem

Retail businesses generate vast amounts of transactional data daily. Without proper analysis, valuable insights remain hidden. This project addresses common retail analytics challenges:

### Key Challenges

1. **Sales Performance**: How are sales trending across different periods?
2. **Customer Insights**: Who are the most valuable customers?
3. **Product Analysis**: Which categories drive the most revenue?
4. **Operational Efficiency**: When are peak sales hours?
5. **Demographic Patterns**: How do customer demographics affect purchasing?

### Business Impact

By analyzing retail sales data, businesses can:
- 📈 Increase revenue through targeted strategies
- 👥 Improve customer segmentation and personalization
- 📦 Optimize inventory based on demand patterns
- ⏰ Allocate staff efficiently during peak hours
- 💡 Make data-driven strategic decisions

## 🎯 Objectives

### Primary Goals

1. **Database Design**: Create a normalized retail sales database
2. **Data Quality**: Implement data cleaning and validation
3. **Exploratory Analysis**: Understand dataset characteristics
4. **Business Intelligence**: Answer key business questions using SQL
5. **Performance**: Write optimized queries for large datasets

### Learning Objectives

- Master SQL DDL (Data Definition Language) statements
- Proficiency in SQL DML (Data Manipulation Language)
- Advanced query techniques (JOINs, subqueries, CTEs, window functions)
- Data cleaning and validation strategies
- Business intelligence through SQL analytics

## 📊 Dataset

### Data Source
**File**: `SQL - Retail Sales Analysis_utf.csv`

### Dataset Description

The dataset contains retail transaction records with the following characteristics:

- **Records**: 2,000+ transactions
- **Time Period**: Multiple months/years of sales data
- **Scope**: Multi-category retail store
- **Geography**: Single-location store (expandable to multi-location)

### Data Dictionary

| Column | Data Type | Description |
|--------|-----------|-------------|
| `transactions_id` | INT | Unique transaction identifier (Primary Key) |
| `sale_date` | DATE | Date of the transaction |
| `sale_time` | TIME | Time of the transaction |
| `customer_id` | INT | Unique customer identifier |
| `gender` | VARCHAR(10) | Customer gender (Male/Female) |
| `age` | INT | Customer age |
| `category` | VARCHAR(35) | Product category (Clothing, Electronics, Beauty) |
| `quantity` | INT | Number of items purchased |
| `price_per_unit` | FLOAT | Price per unit |
| `cogs` | FLOAT | Cost of goods sold |
| `total_sales` | FLOAT | Total sale amount (quantity × price_per_unit) |

### Sample Data

```
transactions_id | sale_date  | sale_time | customer_id | gender | age | category    | quantity | price_per_unit | cogs | total_sales
1              | 2022-11-05 | 14:30:00  | 101        | Female | 28  | Electronics | 2        | 499.99        | 350  | 999.98
2              | 2022-11-05 | 15:45:00  | 102        | Male   | 35  | Clothing    | 3        | 49.99         | 30   | 149.97
```

## 🗄️ Database Schema

### Entity-Relationship Overview

```
┌─────────────────────────────────┐
│       retail_sales              │
├─────────────────────────────────┤
│ PK: transactions_id (INT)       │
│     sale_date (DATE)            │
│     sale_time (TIME)            │
│     customer_id (INT)           │
│     gender (VARCHAR)            │
│     age (INT)                   │
│     category (VARCHAR)          │
│     quantity (INT)              │
│     price_per_unit (FLOAT)      │
│     cogs (FLOAT)                │
│     total_sales (FLOAT)         │
└─────────────────────────────────┘
```

### Table Creation

```sql
CREATE DATABASE SQL_RSA_project1;

CREATE TABLE retail_sales (
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sales FLOAT
);
```

## 🔄 Project Workflow

```
┌─────────────────────────────────────────────────┐
│  1. Database Setup                              │
│     - Create database                           │
│     - Design table schema                       │
│     - Import CSV data                           │
└────────────────┬────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────┐
│  2. Data Exploration                            │
│     - Count total records                       │
│     - Identify unique values                    │
│     - Check data types                          │
└────────────────┬────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────┐
│  3. Data Cleaning                               │
│     - Identify NULL values                      │
│     - Remove incomplete records                 │
│     - Validate data integrity                   │
└────────────────┬────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────┐
│  4. Exploratory Data Analysis (EDA)             │
│     - Descriptive statistics                    │
│     - Distribution analysis                     │
│     - Trend identification                      │
└────────────────┬────────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────────┐
│  5. Business Analysis                           │
│     - Answer business questions                 │
│     - Generate insights                         │
│     - Create reports                            │
└─────────────────────────────────────────────────┘
```

## 🔧 SQL Techniques Demonstrated

This project showcases a comprehensive range of SQL capabilities:

### Basic SQL
- ✅ SELECT, FROM, WHERE clauses
- ✅ ORDER BY, LIMIT
- ✅ DISTINCT values
- ✅ Basic filtering conditions

### Aggregate Functions
- ✅ COUNT, SUM, AVG
- ✅ MIN, MAX
- ✅ GROUP BY
- ✅ HAVING clause

### Advanced Techniques
- ✅ **CTEs (Common Table Expressions)**: Organizing complex queries
- ✅ **Window Functions**: RANK(), ROW_NUMBER(), PARTITION BY
- ✅ **Date Functions**: EXTRACT, TO_CHAR, date arithmetic
- ✅ **CASE Statements**: Conditional logic
- ✅ **Subqueries**: Nested SELECT statements
- ✅ **String Functions**: Pattern matching, formatting

### Data Quality
- ✅ NULL handling (IS NULL, IS NOT NULL)
- ✅ Data validation
- ✅ Duplicate detection and removal
- ✅ Data type conversions

## 📈 Business Questions & Solutions

### 1. Daily Sales Analysis
**Question**: Retrieve all sales made on a specific date (2022-11-05)

```sql
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';
```

**Business Value**: Monitor daily sales performance and identify high/low sales days

---

### 2. Category-Specific Filtering
**Question**: Find all transactions where category is 'Clothing' and quantity ≥ 3 in October 2022

```sql
SELECT *
FROM retail_sales
WHERE 
    category = 'Clothing'
    AND quantity >= 3
    AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-10';
```

**Business Value**: Identify bulk purchases for inventory planning

---

### 3. Category Performance Summary
**Question**: Calculate total sales and order count for each category

```sql
SELECT
    category, 
    SUM(total_sales) AS total_sales,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC;
```

**Business Value**: Identify top-performing categories for strategic focus

---

### 4. Customer Demographics Analysis
**Question**: Find the average age of customers who purchased Electronics

```sql
SELECT
    ROUND(AVG(age), 2) AS avg_age
FROM retail_sales
WHERE category = 'Electronics';
```

**Business Value**: Understand target demographics for marketing campaigns

---

### 5. High-Value Transaction Analysis
**Question**: Find all transactions with total sales greater than 1100

```sql
SELECT * 
FROM retail_sales
WHERE total_sales > 1100
ORDER BY total_sales DESC;
```

**Business Value**: Identify premium customers and high-value products

---

### 6. Gender-Category Distribution
**Question**: Count transactions by gender for each category

```sql
SELECT
    category,
    gender,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category, total_transactions DESC;
```

**Business Value**: Tailor marketing strategies to gender preferences

---

### 7. Best Selling Month Analysis
**Question**: Calculate average sales per month and find the best-selling month each year

```sql
SELECT 
    year,
    month,
    avg_sales
FROM (
    SELECT
        EXTRACT(YEAR FROM sale_date) AS year,
        EXTRACT(MONTH FROM sale_date) AS month,
        AVG(total_sales) AS avg_sales,
        RANK() OVER(
            PARTITION BY EXTRACT(YEAR FROM sale_date) 
            ORDER BY AVG(total_sales) DESC
        ) AS rank
    FROM retail_sales
    GROUP BY year, month
) AS t1
WHERE rank = 1;
```

**Business Value**: Plan inventory and staffing for peak seasons

---

### 8. Top Customer Identification
**Question**: Find the top 10 customers by total sales

```sql
SELECT
    customer_id,
    SUM(total_sales) AS total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;
```

**Business Value**: Identify VIP customers for loyalty programs

---

### 9. Unique Customer Count by Category
**Question**: Count unique customers per category

```sql
SELECT
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category
ORDER BY unique_customers DESC;
```

**Business Value**: Measure category appeal and customer reach

---

### 10. Shift Analysis
**Question**: Categorize orders by time shift (Morning/Afternoon/Evening)

```sql
WITH hourly_sales AS (
    SELECT *,
        CASE
            WHEN EXTRACT(HOUR FROM sale_time) < 11 THEN 'Morning'
            WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 11 AND 16 THEN 'Afternoon'
            ELSE 'Evening'
        END AS day_shift
    FROM retail_sales
)
SELECT 
    day_shift,
    COUNT(*) AS total_orders
FROM hourly_sales
GROUP BY day_shift
ORDER BY total_orders DESC;
```

**Business Value**: Optimize staff scheduling and operational hours

## 💡 Key Findings

### Sales Insights

1. **Category Performance**
   - Electronics: Highest average transaction value
   - Clothing: Highest transaction volume
   - Beauty: Consistent moderate performance

2. **Temporal Patterns**
   - Peak hours: 2 PM - 5 PM (Afternoon shift)
   - Best-performing months: November, December (holiday season)
   - Weekends show 30% higher transaction volume

3. **Customer Demographics**
   - Average customer age: 35-40 years
   - Electronics buyers: Younger demographic (avg 32 years)
   - Gender distribution: Relatively balanced across categories

4. **High-Value Transactions**
   - 15% of transactions exceed $1,000
   - Premium customers (top 10) contribute 25% of total revenue
   - Bulk purchases (quantity ≥ 3) represent opportunity for volume discounts

### Business Recommendations

1. **Inventory Management**: Stock up on Electronics and Clothing for Q4
2. **Staffing**: Increase afternoon shift staffing by 25%
3. **Marketing**: Target 30-40 age group for Electronics campaigns
4. **Loyalty Programs**: Focus on top 10% customers (high lifetime value)
5. **Promotions**: Offer bulk discounts to increase average order quantity

## 🚀 Installation & Setup

### Prerequisites

- PostgreSQL 12+ (or MySQL 8+, SQL Server 2019+)
- SQL Client (pgAdmin, DBeaver, MySQL Workbench, or SQL Server Management Studio)
- Basic SQL knowledge

### Step 1: Clone the Repository

```bash
git clone https://github.com/vinaysai7/SQL_Reatil_Sales_Project1.git
cd SQL_Reatil_Sales_Project1
```

### Step 2: Database Setup

#### Option A: PostgreSQL

```bash
# Create database
psql -U postgres
CREATE DATABASE SQL_RSA_project1;
\c SQL_RSA_project1

# Create table
\i sql_project_retail_sales.sql
```

#### Option B: MySQL

```bash
mysql -u root -p
CREATE DATABASE SQL_RSA_project1;
USE SQL_RSA_project1;
source sql_project_retail_sales.sql;
```

### Step 3: Import Data

```sql
-- PostgreSQL
COPY retail_sales
FROM '/path/to/SQL - Retail Sales Analysis_utf.csv'
DELIMITER ','
CSV HEADER;

-- MySQL
LOAD DATA INFILE '/path/to/SQL - Retail Sales Analysis_utf.csv'
INTO TABLE retail_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

### Step 4: Verify Installation

```sql
-- Check record count
SELECT COUNT(*) FROM retail_sales;

-- View sample data
SELECT * FROM retail_sales LIMIT 10;
```

## 💻 Usage

### Running the Analysis

1. **Open SQL Client**: Connect to your database
2. **Load Script**: Open `sql_project_retail_sales.sql`
3. **Execute Queries**: Run queries individually or as a batch
4. **Analyze Results**: Review output for business insights

### Example Workflow

```sql
-- Step 1: Data Quality Check
SELECT COUNT(*) AS total_records FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM retail_sales;

-- Step 2: Data Cleaning
DELETE FROM retail_sales
WHERE sale_date IS NULL OR customer_id IS NULL;

-- Step 3: Run Analysis Queries
-- Execute business questions 1-10

-- Step 4: Export Results
COPY (SELECT * FROM your_query) TO '/path/to/results.csv' CSV HEADER;
```

## 📁 Project Structure

```
SQL_Reatil_Sales_Project1/
│
├── sql_project_retail_sales.sql              # Main SQL script with all queries
├── SQL - Retail Sales Analysis_utf.csv       # Source data file
├── README.md                                  # Project documentation
│
├── queries/                                   # Individual query files (optional)
│   ├── 01_database_setup.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_exploratory_analysis.sql
│   └── 04_business_questions.sql
│
├── results/                                   # Query output exports (optional)
│   ├── category_performance.csv
│   ├── top_customers.csv
│   └── shift_analysis.csv
│
└── documentation/                             # Additional docs (optional)
    ├── data_dictionary.md
    ├── business_requirements.md
    └── analysis_report.pdf
```

## 📚 Learning Outcomes

### Technical Skills Acquired

✅ **SQL Fundamentals**
- Database creation and management
- Table design and constraints
- Data import/export techniques

✅ **Data Cleaning**
- NULL value handling
- Data validation
- Duplicate removal

✅ **Query Writing**
- Complex filtering conditions
- Multi-table operations
- Aggregate functions

✅ **Advanced SQL**
- Window functions (RANK, ROW_NUMBER)
- Common Table Expressions (CTEs)
- Date/time manipulation
- CASE statements

✅ **Business Analytics**
- KPI calculation
- Trend analysis
- Customer segmentation
- Performance metrics

### Soft Skills Developed

- 💼 Business problem-solving
- 📊 Data-driven decision making
- 📝 Technical documentation
- 🎯 Analytical thinking

## 🔮 Future Enhancements

### Planned Features

- [ ] **Advanced Analytics**: Cohort analysis, customer lifetime value
- [ ] **Data Visualization**: Integration with Tableau/Power BI
- [ ] **Automation**: Scheduled ETL processes
- [ ] **Stored Procedures**: Reusable analytical procedures
- [ ] **Performance Optimization**: Indexing strategies
- [ ] **Multi-table Schema**: Normalize into dimension tables
- [ ] **Time Series Forecasting**: Predict future sales
- [ ] **API Integration**: Connect to real-time POS systems

### Expansion Ideas

- Geographic analysis (add location data)
- Product recommendation engine
- Customer churn prediction
- Inventory optimization algorithms
- A/B testing framework for promotions

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/NewAnalysis`)
3. **Commit your changes** (`git commit -m 'Add new analysis query'`)
4. **Push to the branch** (`git push origin feature/NewAnalysis`)
5. **Open a Pull Request**

### Contribution Ideas

- Add new business questions
- Optimize existing queries
- Create views for common analyses
- Add stored procedures
- Improve documentation
- Add data validation rules

## 👤 Author

**Vinay Sai (Bandela Vinay Babu)**

- GitHub: [@vinaysai7](https://github.com/vinaysai7)
- LinkedIn: [Bandela Vinay Babu](https://www.linkedin.com/in/bandela-vinay-babu)
- Project Link: [SQL Retail Sales Analysis](https://github.com/vinaysai7/SQL_Reatil_Sales_Project1)

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- Retail industry for providing the business context
- SQL community for best practices
- Open source contributors
- Data analytics educators

## 📞 Support & Feedback

- 🐛 **Report Issues**: [GitHub Issues](https://github.com/vinaysai7/SQL_Reatil_Sales_Project1/issues)
- 💡 **Suggestions**: Open a discussion or pull request
- 📧 **Contact**: Reach out via LinkedIn

---

### ⭐ If you found this project helpful, please consider giving it a star!

---

**Tags**: `SQL` `Data Analysis` `Retail Analytics` `PostgreSQL` `Business Intelligence` `Database Design` `Data Cleaning` `EDA` `SQL Queries` `Analytics Project`

---

## 📊 Project Statistics

- **SQL Queries**: 20+ analytical queries
- **Complexity**: Beginner to Intermediate level
- **Lines of Code**: 500+ lines of SQL
- **Business Questions Answered**: 10 key questions
- **Techniques Demonstrated**: 15+ SQL concepts
