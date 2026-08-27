											-- Day 1
-- How to create the database
create database college;
use college;

-- How to create table
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade CHAR(2),
    city VARCHAR(50)
);

-- How to insert values in database
INSERT INTO student (rollno, name, marks, grade, city) VALUES
(1, 'Ali Khan', 85, 'A', 'Peshawar'),
(2, 'Ahmed Raza', 78, 'B', 'Lahore'),
(3, 'Sana Ali', 92, 'A', 'Karachi'),
(4, 'Usman Tariq', 67, 'C', 'Islamabad'),
(5, 'Ayesha Noor', 88, 'A', 'Peshawar'),
(6, 'Bilal Ahmed', 74, 'B', 'Lahore'),
(7, 'Hina Shah', 81, 'A', 'Karachi'),
(8, 'Kamran Iqbal', 69, 'C', 'Islamabad'),
(9, 'Fatima Zahra', 90, 'A', 'Peshawar'),
(10, 'Danish Malik', 72, 'B', 'Lahore'),
(11, 'Zain Ali', 65, 'C', 'Karachi'),
(12, 'Rabia Khan', 87, 'A', 'Islamabad'),
(13, 'Imran Shah', 79, 'B', 'Peshawar'),
(14, 'Nadia Iqbal', 91, 'A', 'Lahore'),
(15, 'Saad Hussain', 68, 'C', 'Karachi'),
(16, 'Maria Khalid', 84, 'B', 'Islamabad'),
(17, 'Hassan Raza', 76, 'B', 'Peshawar'),
(18, 'Noor Fatima', 93, 'A', 'Lahore'),
(19, 'Adnan Sheikh', 62, 'C', 'Karachi'),
(20, 'Kiran Malik', 89, 'A', 'Islamabad'),
(21, 'Salman Ahmed', 71, 'B', 'Peshawar'),
(22, 'Iqra Javed', 95, 'A', 'Lahore'),
(23, 'Fahad Ali', 66, 'C', 'Karachi'),
(24, 'Saba Noor', 82, 'B', 'Islamabad'),
(25, 'Tariq Mehmood', 77, 'B', 'Peshawar'),
(26, 'Amna Siddiqui', 90, 'A', 'Lahore'),
(27, 'Rizwan Khan', 64, 'C', 'Karachi'),
(28, 'Bushra Ansari', 86, 'A', 'Islamabad'),
(29, 'Haris Malik', 73, 'B', 'Peshawar'),
(30, 'Mahnoor Ali', 88, 'A', 'Lahore'),
(31, 'Junaid Akhtar', 61, 'C', 'Karachi'),
(32, 'Samina Riaz', 83, 'B', 'Islamabad'),
(33, 'Yasir Khan', 75, 'B', 'Peshawar'),
(34, 'Mehwish Noor', 91, 'A', 'Lahore'),
(35, 'Waqas Ahmed', 70, 'B', 'Karachi'),
(36, 'Nida Fatima', 85, 'A', 'Islamabad'),
(37, 'Asad Ullah', 68, 'C', 'Peshawar'),
(38, 'Huma Qureshi', 94, 'A', 'Lahore'),
(39, 'Khalid Mehmood', 63, 'C', 'Karachi'),
(40, 'Areeba Khan', 87, 'A', 'Islamabad'),
(41, 'Shahid Afridi', 72, 'B', 'Peshawar'),
(42, 'Zara Ali', 89, 'A', 'Lahore'),
(43, 'Naveed Iqbal', 67, 'C', 'Karachi'),
(44, 'Momina Sheikh', 84, 'B', 'Islamabad'),
(45, 'Imtiaz Ahmed', 76, 'B', 'Peshawar'),
(46, 'Sidra Noor', 92, 'A', 'Lahore'),
(47, 'Farhan Ali', 65, 'C', 'Karachi'),
(48, 'Lubna Khalid', 88, 'A', 'Islamabad'),
(49, 'Qasim Raza', 74, 'B', 'Peshawar'),
(50, 'Alina Javed', 90, 'A', 'Lahore');

-- show all columns with values
select * from student;

-- show selected columns
select rollno, name from student;
select name, marks, grade from student;

											-- Day 2


-- use of where clause
SELECT * FROM student
WHERE city = 'Lahore';

select * from student
where marks>80;

select * from student
where marks>=70 and marks <=80;

select * from student
where marks>=90 or city = "Lahore";

select * from student
where city in ("Lahore", "Karachi");

select * from student
where city not in ("Lahore", "Karachi") limit 5;

-- use of ORDER BY clause
select * from student 
order by marks desc limit 3;

-- Use of AGREGATE Functions
select max(marks) from student;

select min(marks) from student;

select avg(marks) from student;

select distinct(city),count(rollno) from student
group by city;

select city, count(name) from student
group by city;

-- Use of GROUP BY with HAVING Clause
select city, count(name) from student
group by city
having max(marks)>90;

create table city(
id int not null,
name varchar(50),
area int unique);

insert into city(id,name,area) values (1,"Haripur",112233);
select * from city;
insert into city(id,name,area) values (2,"Haripur",121212);
select * from city;
insert into city(id,name,area) values (3,"Haripur",131313);


create table city2(
id int not null,
name varchar(50) unique,
area int unique);


insert into city2(id,name,area) values (1,"Haripur",112233);
select * from city2;
insert into city2(id,name,area) values (2,"Haripur",121212);


alter table city2 
modify name varchar(50);

show tables;

drop table city2;

create table city2(
id int not null,
name varchar(50) unique,
age int not null);

insert into city2(id,name,age) values (2,"Zahid",25);
insert into city2(id,name,age) values (3,"Nawaz",30);
insert into city2(id,name,age) values (4,"Akram",10);

select * from city2;

create table city3(
age int check(age>=30));

insert into city3(age) value (50);
insert into city3(age) value (60);
insert into city3(age) value (70);

insert into city3(age) value (10);
select * from city3;


alter table city3 modify 
age int check(age>=30 AND age<=100);
insert into city3(age) value (10);




show tables;

select * from student
where marks>= 90 AND city= "Peshawar";

select * from student
where marks>= 90 Or city= "Peshawar";

select * from student
where marks between 80 AND 90;

select * from student
where city in ("Islamabad","Karachi");

select * from student
where city not in ("Islamabad","Karachi");

select * from student
where marks>= 90 limit 3;

select * from student
where marks>= 90 or city= "Peshawar" limit 3;

-- ORDER BY CLAUSE

select name, marks from student
where marks >= 70 order by marks asc;

select name, marks from student
where marks >= 70 order by marks desc;

select name, marks from student
where marks >= 70 order by name asc;

select name, marks from student
where marks >= 70 order by name desc;

-- Use Of Aggregate Functions 

select avg(marks) from student;
select max(marks) from student;
select min(marks) from student;

select count(city) from student;
select distinct city from student;

-- Use Of Aggregate Functions with Group By 

select city, count(name) from student
group by city;

-- Use Of Aggregate Functions with Having

select city, count(name) from student
group by city
having max(marks)>90;


-- DUPLICATE THE TABLE with DATA
create table student_copy like student;
insert into student_copy select * from student;

											-- Day 3

-- Table related Queries (update, delete, cascade, alter)
update student_copy
set city = "KPK"
where city="Peshawar";

-- SAFE MODE from Off to ON
set SQL_SAFE_UPDATES =0; 

update student_copy
set marks = 93
where name="Ali Khan";

select name, marks from student_copy order by marks asc;
delete from student_copy where marks=61;

select * from student_copy order by marks asc;
insert into student_copy(rollno, name, marks, grade, city) values (31,"Juanid Akhtar Khan", 61,"C", "Karachi");

 alter table student_copy add column age int not null default 19;
 alter table student_copy drop column age;
 
 alter table student_copy add column age int not null;
 alter table student_copy modify age varchar(2);
 
  alter table student_copy change age std_agae varchar(2);
  
  alter table student_copy rename to student_copy2;
  alter table student_copy2 rename to student_copy;
  
  											-- Day 4
  
  -- USE of FOREIGN KEY and CASCADING 
  create table dept ( 
  dept_id int primary key,
  dept_name varchar(50)
  );

 create table teacher ( 
  teachdr_id int primary key,
  teacher_name varchar(50),
  dept_id int,
  foreign key (dept_id) references dept(dept_id)
  on update cascade
  on delete cascade
  ); 

  insert into dept(dept_id, dept_name) values
  (101, "IT Department"),
  (102, "Science"),
  (103, "Math");
  
   insert into teacher values
  (201, "Ali Khan",101),
  (202, "Nasir Khan",102),
  (203, "Jamal Waheed",103);
  
  update dept
  set dept_id = 301
  where dept_id = 101;
  
  UPDATE dept
SET dept_id = 
    CASE 
        WHEN dept_id = 102 THEN 302
        WHEN dept_id = 103 THEN 303
        ELSE dept_id
    END;
 
 -- JOIN -- USE of Foregin Key in Student1 table and Course table.

CREATE TABLE course (
course_id INT PRIMARY KEY,
course_name VARCHAR(50)
);

CREATE TABLE student1 (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT,
grade CHAR(1),
city VARCHAR(50),
course_id INT,
FOREIGN KEY (course_id) REFERENCES course(course_id)
);


INSERT INTO course (course_id, course_name) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Software Engineering'),
(4, 'Data Science'),
(5, 'Artificial Intelligence'),
(6, 'Cyber Security'),
(7, 'Web Development'),
(8, 'Mobile App Development'),
(9, 'Cloud Computing'),
(10, 'Networking'),
(11, 'Database Systems'),
(12, 'Operating Systems'),
(13, 'Machine Learning'),
(14, 'Deep Learning'),
(15, 'Big Data'),
(16, 'Blockchain'),
(17, 'DevOps'),
(18, 'UI/UX Design'),
(19, 'Game Development'),
(20, 'Embedded Systems'),
(21, 'Digital Marketing'),
(22, 'E-Commerce'),
(23, 'Business Analytics'),
(24, 'FinTech'),
(25, 'IoT'),
(26, 'Robotics'),
(27, 'AR/VR'),
(28, 'Quantum Computing'),
(29, 'Data Engineering'),
(30, 'System Design'),
(31, 'Computer Graphics'),
(32, 'Compiler Design'),
(33, 'Software Testing'),
(34, 'Agile Methodologies'),
(35, 'Project Management'),
(36, 'Human Computer Interaction'),
(37, 'Bioinformatics'),
(38, 'Data Visualization'),
(39, 'Ethical Hacking'),
(40, 'Cloud Security'),
(41, 'AI Ethics'),
(42, 'Edge Computing'),
(43, '5G Technology'),
(44, 'Smart Cities'),
(45, 'Autonomous Systems'),
(46, 'Digital Transformation'),
(47, 'ERP Systems'),
(48, 'CRM Systems'),
(49, 'IT Governance'),
(50, 'Green Computing');

INSERT INTO student1 (rollno, name, marks, grade, city, course_id) VALUES
(1,'Ali Khan',85,'A','Peshawar',1),
(2,'Ahmed Raza',78,'B','Lahore',2),
(3,'Sana Ali',92,'A','Karachi',3),
(4,'Usman Tariq',67,'C','Islamabad',4),
(5,'Ayesha Noor',88,'A','Peshawar',5),
(6,'Bilal Ahmed',74,'B','Lahore',6),
(7,'Hina Shah',81,'A','Karachi',7),
(8,'Kamran Iqbal',69,'C','Islamabad',8),
(9,'Fatima Zahra',90,'A','Peshawar',9),
(10,'Danish Malik',72,'B','Lahore',10),
(11,'Zain Ali',65,'C','Karachi',11),
(12,'Rabia Khan',87,'A','Islamabad',12),
(13,'Imran Shah',79,'B','Peshawar',13),
(14,'Nadia Iqbal',91,'A','Lahore',14),
(15,'Saad Hussain',68,'C','Karachi',15),
(16,'Maria Khalid',84,'B','Islamabad',16),
(17,'Hassan Raza',76,'B','Peshawar',17),
(18,'Noor Fatima',93,'A','Lahore',18),
(19,'Adnan Sheikh',62,'C','Karachi',19),
(20,'Kiran Malik',89,'A','Islamabad',20),
(21,'Salman Ahmed',71,'B','Peshawar',21),
(22,'Iqra Javed',95,'A','Lahore',22),
(23,'Fahad Ali',66,'C','Karachi',23),
(24,'Saba Noor',82,'B','Islamabad',24),
(25,'Tariq Mehmood',77,'B','Peshawar',25),
(26,'Amna Siddiqui',90,'A','Lahore',26),
(27,'Rizwan Khan',64,'C','Karachi',27),
(28,'Bushra Ansari',86,'A','Islamabad',28),
(29,'Haris Malik',73,'B','Peshawar',29),
(30,'Mahnoor Ali',88,'A','Lahore',30),
(31,'Junaid Akhtar',61,'C','Karachi',31),
(32,'Samina Riaz',83,'B','Islamabad',32),
(33,'Yasir Khan',75,'B','Peshawar',33),
(34,'Mehwish Noor',91,'A','Lahore',34),
(35,'Waqas Ahmed',70,'B','Karachi',35),
(36,'Nida Fatima',85,'A','Islamabad',36),
(37,'Asad Ullah',68,'C','Peshawar',37),
(38,'Huma Qureshi',94,'A','Lahore',38),
(39,'Khalid Mehmood',63,'C','Karachi',39),
(40,'Areeba Khan',87,'A','Islamabad',40),
(41,'Shahid Afridi',72,'B','Peshawar',41),
(42,'Zara Ali',89,'A','Lahore',42),
(43,'Naveed Iqbal',67,'C','Karachi',43),
(44,'Momina Sheikh',84,'B','Islamabad',44),
(45,'Imtiaz Ahmed',76,'B','Peshawar',45),
(46,'Sidra Noor',92,'A','Lahore',46),
(47,'Farhan Ali',65,'C','Karachi',47),
(48,'Lubna Khalid',88,'A','Islamabad',48),
(49,'Qasim Raza',74,'B','Peshawar',49),
(50,'Alina Javed',90,'A','Lahore',50);

SELECT s.rollno, s.name, c.course_name
FROM student1 s
JOIN course c
ON s.course_id = c.course_id;

SELECT s.rollno, s.name, c.course_name
FROM student1 s
JOIN course c
ON s.course_id = c.course_id
WHERE c.course_name = 'Data Science';

SELECT s.city, COUNT(s.rollno) AS total_students 
FROM course c
JOIN student1 s
ON c.course_id = s.course_id
GROUP BY s.city;

-- Joins with three tables 

-- CREATE DATABASE join_practice;
-- USE join_practice;

-- 1. Departments Table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- 2. Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 3. Projects Table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

-- Departments
INSERT INTO departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

-- Employees
INSERT INTO employees VALUES
(1, 'Ali', 50000, 101),
(2, 'Sara', 60000, 102),
(3, 'Ahmed', 55000, 102),
(4, 'Ayesha', 70000, 103),
(5, 'Bilal', 45000, NULL); -- No department

-- Projects
INSERT INTO projects VALUES
(201, 'Website', 2),
(202, 'App Development', 3),
(203, 'Audit System', 4),
(204, 'Recruitment System', 1);

-- INNER JOIN (Most Important) Shows only employees who have a matching department.
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- INNER JOIN with Multiple Columns
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN -- Includes all employees, even those without department.
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN -- Includes all departments, even if no employees.
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN with NULL (Find Unassigned Employees) -- Employees with no department
SELECT e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- RIGHT JOIN with NULL (Empty Departments) -- 

SELECT d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;

-- JOIN 3 Tables -- Combine employees + departments + projects
SELECT e.emp_name, d.dept_name, p.project_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN projects p ON e.emp_id = p.emp_id;

-- LEFT JOIN with 3 Tables -- Shows all employees (even without projects)
SELECT e.emp_name, d.dept_name, p.project_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
LEFT JOIN projects p ON e.emp_id = p.emp_id;

-- Highest Salary per Department
SELECT d.dept_name, MAX(e.salary) AS max_salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

-- Employees Without Projects 
SELECT e.emp_name
FROM employees e
LEFT JOIN projects p ON e.emp_id = p.emp_id
WHERE p.project_id IS NULL;

-- Employees Working on Projects + Department
SELECT e.emp_name, d.dept_name, p.project_name
FROM employees e
JOIN projects p ON e.emp_id = p.emp_id
JOIN departments d ON e.dept_id = d.dept_id;


											-- Day 5

-- Lecture on Subqueries, Views and Windows Stored Procedures

-- Departments
CREATE TABLE departments2 (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Employees
CREATE TABLE employees2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments2(dept_id)
);

-- Insert Departments
INSERT INTO departments2 VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

-- Insert Employees
INSERT INTO employees2 VALUES
(1, 'Ali', 50000, 101, '2020-01-10'),
(2, 'Sara', 60000, 102, '2021-03-15'),
(3, 'Ahmed', 55000, 102, '2022-07-20'),
(4, 'Ayesha', 70000, 103, '2019-11-01'),
(5, 'Bilal', 45000, NULL, '2023-02-10'),
(6, 'Zara', 80000, 102, '2018-05-25'),
(7, 'Usman', 48000, 101, '2021-09-09');

-- LECTURE 1: SUBQUERIES
-- A subquery is a query inside another query.

-- 1. Single Value Subquery

SELECT AVG(salary) FROM employees2; -- =58258

SELECT emp_name, salary
FROM employees2;

SELECT emp_name, salary
FROM employees2
WHERE salary >=58258;

-- Subquery
SELECT emp_name, salary
FROM employees2
WHERE salary > (SELECT AVG(salary) FROM employees2);


SELECT * FROM departments2;
SELECT dept_id, dept_name FROM departments2 WHERE dept_name = 'IT';

-- -- 2. Multi-row Subquery 
SELECT emp_name
FROM employees2
WHERE dept_id IN (SELECT dept_id FROM departments2 WHERE dept_name = 'IT');

-- 3. Correlated Subquery

SELECT AVG(salary) FROM employees2
WHERE dept_id = employees2.dept_id;

SELECT emp_name, salary
FROM employees2 e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees2
    WHERE dept_id = employees2.dept_id
);

SELECT emp_name
FROM employees2 e
WHERE EXISTS (
    SELECT 1
    FROM departments2 d
    WHERE d.dept_id = e.dept_id
);

-- LECTURE 2: VIEWS 
-- A VIEW is a virtual table (saved query).

-- 1. Create View
CREATE VIEW emp_view AS
SELECT emp_name, salary
FROM employees2;

SELECT * FROM emp_view; -- Use of view
SELECT * FROM employees2; -- Normal employees2 table view

-- Complex View

CREATE VIEW dept_salary AS
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees2 e
JOIN departments2 d ON e.dept_id = d.dept_id
GROUP BY d.dept_name;



SELECT * FROM dept_salary;

-- 4. Update View
CREATE OR REPLACE VIEW emp_view AS
SELECT emp_name, salary, dept_id
FROM employees2;

SELECT * FROM emp_view;

-- 5. Drop View
DROP VIEW emp_view;

-- LECTURE 3: WINDOW FUNCTIONS
-- Perform calculations without grouping rows

-- 1. ROW_NUMBER()
SELECT emp_name, salary,
ROW_NUMBER() OVER() AS row_num
FROM employees2;

-- 2. RANK()
SELECT emp_name, salary,
RANK() OVER(ORDER BY salary DESC) AS rank_num
FROM employees2;

INSERT INTO employees2 VALUES
(8, 'Zahid Nawaz', 50000, 101, '2020-01-10');
INSERT INTO employees2 VALUES
(9, 'Shahid Nawaz', 0 , 101, '2020-01-10');

-- 3. DENSE_RANK()
SELECT emp_name, salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rankk
FROM employees2;

-- 4. PARTITION BY
-- Ranking within department
SELECT emp_name, dept_id, salary,
RANK() OVER(PARTITION BY dept_id ORDER BY salary DESC) AS dept_rank
FROM employees2;

-- 5. Running Total
SELECT emp_name, salary,
SUM(salary) OVER(ORDER BY emp_id) AS running_total
FROM employees2;

-- LECTURE 4: STORED PROCEDURES
-- Stored procedure = saved SQL logic

-- 1. Simple Procedure
DELIMITER $$

CREATE PROCEDURE get_employees2()
BEGIN
    SELECT * FROM employees2;
END $$

DELIMITER ;
drop procedure get_employees2;
-- 2. Call Procedure
CALL get_employees2();
select * from employees2;

-- 3. Procedure with Parameter
DELIMITER $$

CREATE PROCEDURE get_by_dept(IN dept INT)
BEGIN
    SELECT * FROM employees2
    WHERE dept_id = dept;
END $$

DELIMITER ;

-- Call with Parameter
CALL get_by_dept(101);

-- 5. Procedure with IF Condition
DELIMITER $$

CREATE PROCEDURE salary_check(IN sal INT)
BEGIN
    IF sal > 60000 THEN
        SELECT 'High Salary';
    ELSE
        SELECT 'Low Salary';
    END IF;
END $$

DELIMITER ;

call salary_check(70000);

