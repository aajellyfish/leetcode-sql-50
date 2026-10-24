-- LeetCode 1193. Monthly Transactions I 
-- Difficulty: Medium
-- Topic: Basic Aggregate Functions
-- Link: https://leetcode.com/problems/monthly-transactions-i/

SELECT DATE_FORMAT(trans_date, "%Y-%m") AS month, 
country, 
COUNT(amount) AS trans_count, 
COUNT(CASE WHEN state = "approved" THEN 1 END) AS approved_count, 
SUM(amount) AS trans_total_amount, 
SUM(CASE WHEN state = "approved" THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country;