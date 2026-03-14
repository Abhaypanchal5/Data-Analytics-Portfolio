-- Active: 1773158323634@@127.0.0.1@5432@customer_db
-- ============================================================
-- SECTION 1: CREATE TABLES
-- ============================================================

-- Drop tables if they already exist (safe re-run)
DROP TABLE IF EXISTS scores;
DROP TABLE IF EXISTS students;


-- Table 1: students
CREATE TABLE students (
    StudentID       VARCHAR(10)     PRIMARY KEY,
    Name            VARCHAR(100)    NOT NULL,
    Age             INT,
    Gender          VARCHAR(10),
    Department      VARCHAR(50),
    Subject         VARCHAR(50)
);


-- Table 2: scores
CREATE TABLE scores (
    StudentID           VARCHAR(10)     PRIMARY KEY,
    AttendancePercent   INT,
    MidtermScore        INT,
    FinalScore          INT,
    AssignmentScore     INT,
    PassFail            VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES students(StudentID)
);

-- ============================================================
-- SECTION 2: ANALYSIS QUERIES
-- ============================================================


-- ------------------------------------------------------------
-- Q1: How many total students are there?
-- ------------------------------------------------------------
SELECT COUNT(*) AS total_students
FROM students;


-- ------------------------------------------------------------
-- Q2: What is the overall pass rate?
-- ------------------------------------------------------------
SELECT
    PassFail,
    COUNT(*) AS total,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM scores), 2) AS percentage
FROM scores
GROUP BY PassFail;


-- ------------------------------------------------------------
-- Q3: Which department has the highest failure rate?
-- ------------------------------------------------------------
SELECT
    s.Department,
    COUNT(*) AS total_students,
    SUM(CASE WHEN sc.PassFail = 'Fail' THEN 1 ELSE 0 END) AS total_fails,
    ROUND(SUM(CASE WHEN sc.PassFail = 'Fail' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS fail_rate_percent
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
GROUP BY s.Department
ORDER BY fail_rate_percent DESC;


-- ------------------------------------------------------------
-- Q4: What is the average final score by department?
-- ------------------------------------------------------------
SELECT
    s.Department,
    ROUND(AVG(sc.FinalScore), 2) AS avg_final_score,
    ROUND(AVG(sc.MidtermScore), 2) AS avg_midterm_score,
    ROUND(AVG(sc.AssignmentScore), 2) AS avg_assignment_score
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
GROUP BY s.Department
ORDER BY avg_final_score DESC;


-- ------------------------------------------------------------
-- Q5: Does attendance impact pass/fail outcome?
-- ------------------------------------------------------------
SELECT
    PassFail,
    ROUND(AVG(AttendancePercent), 2) AS avg_attendance
FROM scores
GROUP BY PassFail;


-- ------------------------------------------------------------
-- Q6: How does gender affect average performance?
-- ------------------------------------------------------------
SELECT
    s.Gender,
    ROUND(AVG(sc.FinalScore), 2) AS avg_final_score,
    ROUND(AVG(sc.AttendancePercent), 2) AS avg_attendance,
    SUM(CASE WHEN sc.PassFail = 'Pass' THEN 1 ELSE 0 END) AS total_pass,
    SUM(CASE WHEN sc.PassFail = 'Fail' THEN 1 ELSE 0 END) AS total_fail
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
GROUP BY s.Gender;


-- ------------------------------------------------------------
-- Q7: Which subject has the highest failure rate?
-- ------------------------------------------------------------
SELECT
    s.Subject,
    COUNT(*) AS total_students,
    SUM(CASE WHEN sc.PassFail = 'Fail' THEN 1 ELSE 0 END) AS total_fails,
    ROUND(SUM(CASE WHEN sc.PassFail = 'Fail' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS fail_rate_percent
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
GROUP BY s.Subject
ORDER BY fail_rate_percent DESC;


-- ------------------------------------------------------------
-- Q8: List all at-risk students
--     (attendance < 60 AND final score < 40)
-- ------------------------------------------------------------
SELECT
    s.StudentID,
    s.Name,
    s.Department,
    sc.AttendancePercent,
    sc.FinalScore,
    sc.PassFail
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
WHERE sc.AttendancePercent < 60
  AND sc.FinalScore < 40
ORDER BY sc.FinalScore ASC;


-- ------------------------------------------------------------
-- Q9: Top 10 performing students by final score
-- ------------------------------------------------------------
SELECT
    s.StudentID,
    s.Name,
    s.Department,
    sc.FinalScore,
    sc.AttendancePercent,
    sc.PassFail
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
ORDER BY sc.FinalScore DESC
LIMIT 10;


-- ------------------------------------------------------------
-- Q10: Departments where average attendance is below 70%
--      (use HAVING for this)
-- ------------------------------------------------------------
SELECT
    s.Department,
    ROUND(AVG(sc.AttendancePercent), 2) AS avg_attendance
FROM students s
JOIN scores sc ON s.StudentID = sc.StudentID
GROUP BY s.Department
HAVING AVG(sc.AttendancePercent) < 70
ORDER BY avg_attendance ASC;


-- ============================================================
-- END OF SCRIPT
-- ============================================================
