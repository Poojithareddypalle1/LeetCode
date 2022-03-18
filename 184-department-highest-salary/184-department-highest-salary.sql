# Write your MySQL query statement below


      
WITH tmp as (SELECT e.id, e.name as Employee, e.salary as Salary, e.departmentId, d.name as Department,
dense_rank() over (partition by e.departmentId order by e.salary desc) 'rank'
FROM Employee e
JOIN Department d on e.departmentId = d.id)
SELECT r.Department, r.Employee, r.Salary
FROM tmp r
WHERE r.rank = 1;



