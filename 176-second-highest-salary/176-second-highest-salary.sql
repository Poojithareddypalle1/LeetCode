Select Max(salary) AS SecondHighestSalary
from employee
where salary <(select Max(salary)from employee);