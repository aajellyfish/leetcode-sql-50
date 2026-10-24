-- LeetCode 1075. Project Employees I
-- Difficulty: Easy
-- Topic: Basic Aggregate Functions
-- Link: https://leetcode.com/problems/project-employees-i/

SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p
LEFT JOIN Employee e
  ON p.employee_id = e.employee_id
GROUP BY project_id;
