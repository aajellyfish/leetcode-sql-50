-- LeetCode 1907. Count Salary Categories
-- Difficulty: Medium
-- Topic: Advanced Select and Joins
-- Link: https://leetcode.com/problems/count-salary-categories/

WITH categories AS (
    SELECT 'Low Salary' AS category
    UNION ALL SELECT 'Average Salary'
    UNION ALL SELECT 'High Salary'
),
classified AS (
    SELECT
        CASE
            WHEN income < 20000  THEN 'Low Salary'
            WHEN income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category
    FROM Accounts
)
SELECT
    c.category,
    COUNT(cl.category) AS accounts_count
FROM categories c
LEFT JOIN classified cl
    ON cl.category = c.category
GROUP BY c.category;
