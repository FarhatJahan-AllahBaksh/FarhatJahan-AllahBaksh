/* Write your PL/SQL query statement below */
select name as customers 
from 
customers 
where
id not in (select customerId from Orders) order by Id 