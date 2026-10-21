-- LeetCode 1581. Customer Who Visited But Did Not Make Any Transactions
-- Difficulty: Easy
-- Topic: Select
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

SELECT customer_id, count(customer_id) AS count_no_trans
FROM Visits
LEFT JOIN Transactions
  ON Visits.visit_id = Transactions.visit_id
WHERE transactions.visit_id IS NULL
GROUP BY customer_id