CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
   SELECT max(Salary) INTO result FROM (
      SELECT Salary, dense_rank() OVER(ORDER BY Salary DESC) as dense_rank
      FROM Employee
   ) WHERE dense_rank = N;
   
    RETURN result;
END;