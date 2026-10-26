-- LeetCode 596. Classes With At Least 5 Students
-- Difficulty: Easy
-- Topic: Sorting and Grouping
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students/

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;