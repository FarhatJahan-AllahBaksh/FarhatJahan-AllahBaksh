/* Write your PL/SQL query statement below */
select a.firstname,a.lastname,b.city,b.state from person a left outer join address b on a.personid = b.personid