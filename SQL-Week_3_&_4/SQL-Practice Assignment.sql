-- Task 1: Database and Table Creation
-- Create a database 
CREATE DATABASE StudentAnalyticsDB;
USE StudentAnalyticsDB;

-- Create at least one table with appropriate fields
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    age INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50),
    credit_hours INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    marks INT,
    semester VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Task 2: Data Insertion --> Insert data using dataset file OR manual entries (Minimum 5–10 records)
INSERT INTO departments (dept_name) VALUES
('Electrical Engineering'),
('Computer Science'),
('Mechanical Engineering');

INSERT INTO students (student_name, age, dept_id) VALUES
('Ali', 21, 1),
('Sara', 22, 2),
('Ahmed', 20, 1),
('Ayesha', 23, 3),
('Usman', 21, 2);

INSERT INTO courses (course_name, credit_hours) VALUES
('Database Systems', 3),
('Machine Learning', 4),
('Power Electronics', 3);

INSERT INTO enrollments (student_id, course_id, marks, semester) VALUES
(1, 3, 85, 'Fall'),
(2, 1, 90, 'Fall'),
(3, 3, 78, 'Spring'),
(4, 2, 88, 'Spring'),
(5, 1, 92, 'Fall'),
(2, 2, 95, 'Spring');

-- Task 3: SELECT Queries
-- Display all records 
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM departments;
SELECT * FROM enrollments;

-- Display selected columns
SELECT student_name, age FROM students;

-- Task 4: WHERE Conditions
-- Apply filtering using different conditions -> Example: marks > 80, age < 25
SELECT * FROM students
WHERE age < 22;

SELECT * FROM enrollments
WHERE marks > 85;

-- Task 5: GROUP BY and HAVING
-- Group data based on a column.
SELECT course_id, ROUND(AVG(marks),2) AS avg_marks
FROM enrollments
GROUP BY course_id;

-- Apply HAVING condition
SELECT course_id, ROUND(AVG(marks),2) AS avg_marks
FROM enrollments
GROUP BY course_id
HAVING AVG(marks) > 85;

-- Task 6: JOIN Operations
SELECT s.student_name, d.dept_name , c.course_name, e.marks
FROM enrollments e
INNER JOIN students s ON e.student_id = s.student_id
INNER JOIN departments d ON s.dept_id = d.dept_id
INNER JOIN courses c ON e.course_id = c.course_id;

-- Task 7: Subqueries
-- Write at least one subquery 
SELECT student_id, marks
FROM enrollments
WHERE marks > (
    SELECT AVG(marks) FROM enrollments
);

-- Task 8: CASE Statements
-- Use CASE to categorize data 
SELECT student_id, marks,
CASE
    WHEN marks >= 85 THEN 'A'
    WHEN marks >= 70 THEN 'B'
    ELSE 'C'
END AS grade
FROM enrollments;

-- Task 9: Window Functions
-- Apply functions like RANK() or ROW_NUMBER()
SELECT student_id, course_id, marks,
RANK() OVER (PARTITION BY course_id ORDER BY marks DESC) AS course_rank
FROM enrollments;

-- Task 10: Views
-- Create a VIEW
CREATE VIEW student_performance_view AS
SELECT s.student_name, d.dept_name, c.course_name, e.marks
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN departments d ON s.dept_id = d.dept_id
JOIN courses c ON e.course_id = c.course_id;


-- Retrieve data using that VIEW
SELECT * FROM student_performance_view;