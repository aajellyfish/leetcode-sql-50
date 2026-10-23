-- LeetCode 1934. Confirmation Rate
-- Difficulty: Medium
-- Topic: Basic Join
-- Link: https://leetcode.com/problems/confirmation-rate/

SELECT s.user_id, ROUND
                     (CASE
                       WHEN COUNT(c.user_id) = 0 THEN 0
                         ELSE COUNT(CASE WHEN c.action = "confirmed" THEN 1 END) 
                         / COUNT(c.user_id)
END,2) AS confirmation_rate

FROM Signups s
LEFT JOIN Confirmations c
  ON s.user_id = c.user_id
GROUP BY s.user_id;