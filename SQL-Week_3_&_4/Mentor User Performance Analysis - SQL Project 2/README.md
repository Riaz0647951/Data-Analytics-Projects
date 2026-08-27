# Mentor User Performance Analysis | SQL Project 2


## Project Overview

This project is designed to help beginners understand SQL querying and performance analysis using real-time data from SQL Mentor datasets. In this project, you will analyze user performance by creating and querying a table of user submissions. The goal is to solve a series of SQL problems to extract meaningful insights from user data.

## Objectives

- Learn how to use SQL for data analysis tasks such as aggregation, filtering, and ranking.
- Understand how to calculate and manipulate data in a real-world dataset.
- Gain hands-on experience with SQL functions like `COUNT`, `SUM`, `AVG`, `DATE_FORMAT`, and `DENSE_RANK()`.
- Develop skills for performance analysis using SQL by solving different types of data problems related to user performance.

## Project Level: Beginner

This project is designed for beginners who are familiar with the basics of SQL and want to learn how to handle real-world data analysis problems. You'll be working with a small dataset and writing SQL queries to solve different tasks that are commonly encountered in data analytics.

## SQL Mentor User Performance Dataset

The dataset consists of information about user submissions for an online learning platform. Each submission includes:
- **User ID**
- **Question ID**
- **Points Earned**
- **Submission Timestamp**
- **Username**

This data allows you to analyze user performance in terms of correct and incorrect submissions, total points earned, and daily/weekly activity.

## SQL Problems and Questions

Here are the SQL problems that you will solve as part of this project:

### Q1. List All Distinct Users and Their Stats
- **Description**: Return the user name, total submissions, and total points earned by each user.
- **Expected Output**: A list of users with their submission count and total points.

### Q2. Calculate the Daily Average Points for Each User
- **Description**: For each day, calculate the average points earned by each user.
- **Expected Output**: A report showing the average points per user for each day.

### Q3. Find the Top 3 Users with the Most Correct Submissions for Each Day
- **Description**: Identify the top 3 users with the most correct submissions for each day.
- **Expected Output**: A list of users and their correct submissions, ranked daily.

### Q4. Find the Top 5 Users with the Highest Number of Incorrect Submissions
- **Description**: Identify the top 5 users with the highest number of incorrect submissions.
- **Expected Output**: A list of users with the count of incorrect submissions.

### Q5. Find the Top 10 Performers for Each Week
- **Description**: Identify the top 10 users with the highest total points earned each week.
- **Expected Output**: A report showing the top 10 users ranked by total points per week.

## Key SQL Concepts Covered

- **Aggregation**: Using `COUNT`, `SUM`, `AVG` to aggregate data.
- **Date Functions**: Using `DATE_FORMAT`, `DAY` and `WEEK` for manipulating dates.
- **Conditional Aggregation**: Using `CASE WHEN` to handle positive and negative submissions.
- **Ranking**: Using `DENSE_RANK()` to rank users based on their performance.
- **Group By**: Aggregating results by groups (e.g., by user, by day, by week).

## Create Database `mentor_db`
First of all create the database named `mentor db` and its table `user_submissions`.

```sql
-- Create Database
CREATE DATABASE mentor_db;

USE mentor_db;

-- Create Table
CREATE TABLE user_submissions(
	id SERIAL PRIMARY KEY,
	user_id BIGINT,
	question_id INT,
	points INT,
    submitted_at TIMESTAMP,
	username VARCHAR(50)
);
```
Then import the dataset `user_sub_sql_mentor06nov.csv` into the database.

## SQL Queries Solutions

Below are the solutions for each question in this project:

### Q1: List All Distinct Users and Their Stats
```sql
SELECT
	username,
    COUNT(id) AS total_submissions,
    SUM(points) AS points_earned
FROM user_submissions
GROUP BY username
ORDER BY total_submissions DESC;
```

### Q2: Calculate the Daily Average Points for Each User
```sql
SELECT
	DATE_FORMAT(submitted_at, '%m-%d') AS day,
    username,
    AVG(points) AS daily_average_points
FROM user_submissions
GROUP BY day, username;
```

### Q3: Find the Top 3 Users with the Most Correct Submissions for Each Day
```sql
WITH daily_correct_submissions
AS
(
	SELECT
		DATE_FORMAT(submitted_at, '%m-%d') AS day,
		username,
		SUM(CASE
				WHEN points > 0 THEN 1
				ELSE 0
			END) AS correct_submissions
	FROM user_submissions
	GROUP BY day, username
    ),
users_rank
AS
(
	SELECT
		day,
        username,
        correct_submissions,
        DENSE_RANK() OVER (PARTITION BY day ORDER BY correct_submissions DESC) AS ranking
	FROM daily_correct_submissions
    )
SELECT *
FROM users_rank
WHERE ranking <= 3;
```

### Q4: Find the Top 5 Users with the Highest Number of Incorrect Submissions
```sql
SELECT
	username,
	SUM(CASE
			WHEN points < 0 THEN 1
			ELSE 0
		END) AS incorrect_submissions
FROM user_submissions
GROUP BY username
ORDER BY incorrect_submissions DESC
LIMIT 5;
```

### Q5: Find the Top 10 Performers for Each Week
```sql
SELECT *
FROM
(
	SELECT
		WEEK(submitted_at) AS week_no,
        username,
        SUM(points) AS total_points_earned,
        DENSE_RANK() OVER(PARTITION BY WEEK(submitted_at) ORDER BY SUM(points) DESC) AS ranking
	FROM user_submissions
    GROUP BY week_no, username
    ORDER BY week_no, total_points_earned DESC
    ) AS performace_ranking
WHERE ranking <= 10;
```

## Conclusion

This project provides an excellent opportunity for beginners to apply their SQL knowledge to solve practical data problems. By working through these SQL queries, you'll gain hands-on experience with data aggregation, ranking, date manipulation, and conditional logic.


## How to Use

1. **Clone the Repository**: Clone this project repository from GitHub.
2. **Set Up the Database**: Run the SQL scripts provided in the `Mentor User Performance Analysis - SQL Project 2.sql` file. After creating the database and its table, import data from the `user_sub_sql_mentor06nov.csv ` file to populate the database.
3. **Run the Queries**: Use the SQL queries provided in the `Mentor User Performance Analysis - SQL Project 2.sql` file step by step to perform your analysis.
4. **Explore and Modify**: Feel free to modify the queries to explore different aspects of the dataset or answer additional business questions.

## Author - Riaz Ud Din

This project is part of my portfolio, showcasing the SQL skills essential for data analyst roles. If you have any questions, feedback, or would like to collaborate, feel free to get in touch!

### Stay Updated and Connected

For more content on SQL, data analysis, and other data-related topics, make sure to follow me on linkedin:


- **LinkedIn**: [Connect with me professionally](https://www.linkedin.com/in/riaz-ud-din-0918a3271)


Thank you for your support, and I look forward to connecting with you!