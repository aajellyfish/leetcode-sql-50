-- LeetCode 620. Not Boring Movies
-- Difficulty: Easy
-- Topic: Basic Aggregate Functions
-- Link: https://leetcode.com/problems/not-boring-movies/

SELECT *
FROM Cinema
WHERE id % 2 != 0 AND description != "boring"
ORDER BY rating DESC;