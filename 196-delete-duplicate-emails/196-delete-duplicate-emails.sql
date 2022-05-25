/*
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your PL/SQL query statement below
 */

delete from Person where id in (select id from (select id,email,dense_rank() over (partition by email order by id) as  rank from Person) where rank >1)