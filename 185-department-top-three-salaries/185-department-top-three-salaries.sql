/* Write your PL/SQL query statement below */
select department, Employee,salary 
from 
(select b.name as department,a.name as Employee,a.salary,dense_rank() over (partition by a.departmentId order by a.salary desc) as rank
from
employee a,
department b
where a.departmentId=b.Id)
where rank in(1,2,3)
