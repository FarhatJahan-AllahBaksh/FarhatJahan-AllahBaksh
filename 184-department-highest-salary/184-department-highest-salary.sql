/* Write your PL/SQL query statement below */
select Department, Employee, salary
from 
(select 
b.name as Department,a.name as Employee, a.salary , dense_rank() over (partition by a.departmentId order by a.salary desc) as rank 
from
Employee a,
Department b
where a.departmentId = b.id)
where rank=1

