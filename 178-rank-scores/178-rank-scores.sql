/* Write your PL/SQL query statement below */
SELECT Score, DENSE_RANK() OVER (ORDER BY Score DESC) as Rank FROM Scores order by score desc;