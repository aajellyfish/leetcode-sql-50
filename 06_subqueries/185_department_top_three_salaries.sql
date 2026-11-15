-- LeetCode 185. Department Top Three Salaries
-- Difficulty: Hard
-- Topic: Subqueries
-- Link: https://leetcode.com/problems/department-top-three-salaries/

SELECT Department, Employee, Salary
FROM (
    SELECT DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk, d.name AS Department, e.name AS Employee, e.salary AS Salary
    FROM Employee e
    JOIN Department d 
    ON e.departmentId = d.id
) AS top_3
WHERE rnk <= 3;
