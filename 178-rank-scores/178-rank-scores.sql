# Write your MySQL query statement below








SELECT score,
DENSE_RANK() Over (ORDER BY score DESC) AS 'Rank'
FROM Scores
