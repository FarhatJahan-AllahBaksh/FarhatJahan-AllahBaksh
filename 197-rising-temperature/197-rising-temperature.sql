/* Write your PL/SQL query statement below */

with 
t2 as (select id,temperature,to_char(recorddate+1,'yyyy-mm-dd') as newdate from weather)

select t1.id from weather t1 inner join t2 on t1.recorddate=t2.newdate where t1.temperature>t2.temperature