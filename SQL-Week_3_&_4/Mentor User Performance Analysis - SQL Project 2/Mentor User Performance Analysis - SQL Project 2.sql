-- SQL Mentor User Performance Project

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


SELECT * FROM user_submissions;

-- Q.1 List all distinct users and their stats (return user_name, total_submissions, points earned)
SELECT
	username,
    COUNT(id) AS total_submissions,
    SUM(points) AS points_earned
FROM user_submissions
GROUP BY username
ORDER BY total_submissions DESC;


-- Q.2 Calculate the daily average points for each user.
SELECT
	DATE_FORMAT(submitted_at, '%m-%d') AS day,
    username,
    AVG(points) AS daily_average_points
FROM user_submissions
GROUP BY day, username;


-- Q.3 Find the top 3 users with the most correct/positive submissions for each day.
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


-- Q.4 Find the top 5 users with the highest number of incorrect submissions.
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
   

-- Q.5 Find the top 10 performers for each week.
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

