

-- create table

CREATE TABLE retail_sales
         (
            transactions_id INT PRIMARY KEY,
            sale_date DATE,
            sale_time TIME,
            customer_id INT,
			gender VARCHAR(20),
			age INT,
			category VARCHAR(20),
			quantiy INT,
			price_per_unit FLOAT,
			cogs FLOAT,
			total_sales FLOAT

		);

ALTER TABLE retail_sales RENAME COLUMN quantiy TO quantity;


SELECT * FROM retail_sales;

SELECT * FROM retail_sales
LIMIT 15;

SELECT COUNT(*) FROM retail_sales;

-- FINDING THE NUUL values in the table

SELECT * FROM retail_sales
WHERE
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR
	 category IS NULL
	 OR
	 quantity IS NULL
	 OR
	 cogs IS NULL
	 OR
	 total_sales IS NULL;

-- NOW DELETING NULL VALUES PRESNTING IN THE TABLE

DELETE  FROM retail_sales
WHERE
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR
	 category IS NULL
	 OR
	 quantity IS NULL
	 OR
	 cogs IS NULL
	 OR
	 total_sales IS NULL;


-- Data Exploration

-- How Many Sales We Have?

SELECT COUNT(*) AS total_sales FROM retail_sales;

-- How many unique customers we have?

SELECT COUNT(DISTINCT(customer_id)) AS total_customers FROM retail_sales;

-- How many unique category we have?

SELECT DISTINCT(category) FROM retail_sales;


--- Data Analysis & Business Key problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Electronics' and the quantity sold is more than 3 in the month of Oct-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Electronics' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1100.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 10 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)


-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 3 in the month of Oct-2022

SELECT *
FROM retail_sales
WHERE 
     category = 'Clothing'
     AND
	 quantity >= '3'
	 AND
	 TO_CHAR(sale_date, 'YYYY-MM') = '2022-10';

-- Q.3 Write a SQL query to calculate the TotalSales (total_sales),total_orders for each category.

SELECT
     category, 
	 SUM(total_sales) AS TotalSales,
	 COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Electronics' category.

SELECT
	  ROUND(AVG(age),2) avg_age
	  FROM retail_sales
	  WHERE
	       category = 'Electronics';

-- Q.5 Write a SQL query to find all transactions where the total_sales is greater than 1100.

SELECT *
FROM retail_sales
WHERE
     total_sales > '1100';


-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

SELECT
      category,
	  gender,
      COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY
       category,
	   gender
ORDER BY
       category;


-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year.

SELECT 
     year,
	 month,
	 avg_sales
FROM
(
	SELECT
	     EXTRACT(YEAR FROM sale_date) AS year,
		 EXTRACT(MONTH FROM sale_date) AS month,
		 AVG(total_sales) AS avg_sales,
		 RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY  AVG(total_sales)DESC) AS RANK
		 FROM retail_sales
	GROUP BY year,month
) AS t1
WHERE RANK = 1;


-- Q.8 Write a SQL query to find the top 10 customers based on the highest total sales.

SELECT
      customer_id,
	  SUM(total_sales) AS totalSales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

SELECT
      category,
	  COUNT(DISTINCT customer_id) AS unique_customers_count
FROM retail_sales
GROUP BY category;


-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <11, Afternoon Between 11 & 16, Evening >16).

WITH hourly_sales
AS
(
SELECT *,
      CASE
	      WHEN EXTRACT(HOUR FROM sale_time) < 11 THEN 'Morning'
		  WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 11 AND 16 THEN 'Afternoon'
		  ELSE 'Evening'
	  END AS day_shifts
FROM retail_sales
)
SELECT 
      day_shifts,
	  COUNT(*) AS total_orders
FROM hourly_sales
GROUP BY day_shifts;


-- End Of The Project


