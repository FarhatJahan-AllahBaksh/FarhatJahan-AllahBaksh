/* Write your PL/SQL query statement below */
select distinct email as Email
from 
(select id,email,row_number() over (partition by email order by Id) as rank from Person) where rank > 1