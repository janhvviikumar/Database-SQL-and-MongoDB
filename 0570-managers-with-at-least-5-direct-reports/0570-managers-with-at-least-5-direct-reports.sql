# Write your MySQL query statement below
SELECT e.name
FROM Employee e 
INNER JOIN Employee m ON m.managerid=e.id
GROUP BY m.managerId 
HAVING COUNT(m.managerId) >= 5