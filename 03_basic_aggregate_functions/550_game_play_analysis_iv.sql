-- LeetCode 550. Game Play Analysis IV
-- Difficulty: Medium
-- Topic: Basic Aggregate Functions
-- Link: https://leetcode.com/problems/game-play-analysis-iv/

WITH first_login AS (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
    ),
     player_list AS(
        SELECT DISTINCT f.player_id
        FROM first_login f
        JOIN Activity a
        ON a.player_id = f.player_id AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY)
     )
SELECT ROUND(
    (SELECT COUNT(*) FROM player_list) / 
    (SELECT COUNT(*) FROM first_login),2) AS fraction;