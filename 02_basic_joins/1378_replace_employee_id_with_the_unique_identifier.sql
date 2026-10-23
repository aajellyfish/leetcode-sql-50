-- LeetCode 1378. Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Topic: Basic Join
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI
  ON employees.id = employeeUNI.id;