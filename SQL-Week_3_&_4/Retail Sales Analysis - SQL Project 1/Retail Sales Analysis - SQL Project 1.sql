-- Create Database
CREATE DATABASE retail_db;

USE retail_db;

-- Create Table
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
            (
                transactions_id INT PRIMARY KEY,
                sale_date DATE,
                sale_time TIME,
                customer_id INT,
                gender VARCHAR(15),
                age INT,
                category VARCHAR(15),
                quantity INT,
                price_per_unit FLOAT,
                cogs FLOAT,
                total_sale FLOAT
            );
            
-- Check if there is any data in the table
SELECT * FROM retail_sales;

SELECT COUNT(*) FROM retail_sales;

SELECT * FROM retail_sales
WHERE transactions_id IS NULL;

-- Data Cleaning
-- Check all the columns if there are any null values
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
     age IS NULL
     OR 
     category IS NULL
     OR 
     quantity IS NULL
     OR 
     price_per_unit IS NULL
     OR 
     cogs IS NULL
     OR 
     total_sale IS NULL;
     
     
-- Delete null values from the table
DELETE FROM retail_sales
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
     age IS NULL
     OR 
     category IS NULL
     OR 
     quantity IS NULL
     OR 
     price_per_unit IS NULL
     OR 
     cogs IS NULL
     OR 
     total_sale IS NULL;
     
     
-- Data Exploration
-- How many sales we have?
SELECT COUNT(*) AS total_sales FROM retail_sales;

-- How many unique customers we have?
SELECT COUNT(DISTINCT(customer_id)) AS customer_count FROM retail_sales;

-- How many categories we have?
SELECT COUNT(DISTINCT(category)) AS category_count FROM retail_sales;

SELECT DISTINCT(category) AS category FROM retail_sales;


-- Data Analysis & Business Key Problems & Answers
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';


-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 3 in the month of Nov-2022
SELECT *
FROM retail_sales
WHERE category = 'Clothing'
      AND
      quantity > 3
      AND 
      sale_date BETWEEN '2022-11-01' AND '2022-11-30';


-- Q.3 Write a SQL query to calculate the total sales and total orders for each category
SELECT 
      category,
      SUM(total_sale) AS total_sales,
      COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;


-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category
SELECT 
      category,
      ROUND(AVG(age),2) AS average_age
FROM retail_sales
WHERE category = 'Beauty';


-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000
SELECT *
FROM retail_sales
WHERE total_sale > 1000;


-- Q.6 Write a SQL query to find the total number of transactions(transactions_id) made by each gender in each category.
SELECT
      category,
      gender,
      COUNT(transactions_id) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY 1;


-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year.
SELECT
      year,
      month,
      average_sale
FROM
(
    SELECT 
      YEAR(sale_date) AS year,
      MONTH(sale_date) AS month,
      AVG(total_sale) AS average_sale,
      RANK() OVER(PARTITION BY YEAR(sale_date) ORDER BY AVG(total_sale) DESC) AS ranking
	FROM retail_sales
    GROUP BY 1, 2
) AS t1
WHERE ranking = 1;


-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales
SELECT
      customer_id,
      SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;


-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
SELECT
      category,
      COUNT(DISTINCT(customer_id)) AS unique_customers_count
FROM retail_sales
GROUP BY category;


-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
WITH hourly_sale
AS
(
SELECT
      CASE
          WHEN HOUR(sale_time) < 12 THEN 'Morning'
          WHEN HOUR(sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
          ELSE 'Evening'
      END AS shift
FROM retail_sales
)
SELECT
      shift,
      COUNT(*) AS total_orders
FROM hourly_sale
GROUP BY shift;

-- End of Project