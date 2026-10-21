-- LeetCode 1683. Invalid Tweets
-- Difficulty: Easy
-- Topic: Select
-- Link: https://leetcode.com/problems/invalid-tweets/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;