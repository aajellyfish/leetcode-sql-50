-- LeetCode 619. Biggest Single Number
-- Difficulty: Easy
-- Topic: Sorting and Grouping
-- Link: https://leetcode.com/problems/biggest-single-number/

SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
);