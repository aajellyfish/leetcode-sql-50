-- LeetCode 180. Consecutive Numbers
-- Difficulty: Medium
-- Topic: Advanced Select and Joins
-- Link: https://leetcode.com/problems/consecutive-numbers/

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2
  ON l2.id = l1.id + 1 AND l2.num = l1.num
JOIN Logs l3
  ON l3.id = l1.id + 2 AND l3.num = l1.num;

