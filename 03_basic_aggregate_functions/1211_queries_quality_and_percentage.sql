-- LeetCode 1211. Queries Quality and Percentage
-- Difficulty: Easy
-- Topic: Basic Aggregate Functions
-- Link: https://leetcode.com/problems/queries-quality-and-percentage/

SELECT query_name, 
ROUND(AVG(rating * 1.0 / position),2) AS quality, 
ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(rating) * 100,2) AS poor_query_percentage
FROM Queries 
GROUP By query_name;