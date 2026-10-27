-- LeetCode 1731. The Number of Employees Which Report to Each Employee
-- Difficulty: Easy
-- Topic: Advanced Select and Joins
-- Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/

SELECT m.employee_id, m.name, COUNT(e.employee_id) AS reports_count, ROUND(AVG(e.age),0) AS average_age
FROM Employees e
JOIN Employees m
  ON e.reports_to = m.employee_id
GROUP BY m.employee_id,m.name
ORDER BY m.employee_id;