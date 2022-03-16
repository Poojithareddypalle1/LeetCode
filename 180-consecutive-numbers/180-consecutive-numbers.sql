# Write your MySQL query statement below



select distinct num as ConsecutiveNums
from (
SELECT
num,
LEAD(num, 1) OVER(ORDER BY id) AS next_num,
LAG(num, 1) OVER(ORDER BY id) AS last_num
FROM Logs
) as t
where next_num = num and num = last_num

