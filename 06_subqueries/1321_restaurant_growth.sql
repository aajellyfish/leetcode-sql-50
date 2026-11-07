-- LeetCode 1321. Restaurant Growth
-- Difficulty: Medium
-- Topic: Subqueries
-- Link: https://leetcode.com/problems/restaurant-growth/

SELECT visited_on, amount, average_amount
FROM (
    SELECT visited_on, SUM(day_amount) OVER (
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS amount,
    ROUND(
        SUM(day_amount) OVER(
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ) / 7,2
    ) AS average_amount
    FROM(
        SELECT visited_on, SUM(amount) AS day_amount
        FROM Customer
        GROUP BY visited_on
    ) AS d
) AS t
WHERE visited_on >= (
    SELECT DATE_ADD(MIN(visited_on), INTERVAL 6 DAY)
    FROM Customer
)
ORDER BY visited_on ASC