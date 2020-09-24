SELECT CEILING(AVG(Salary - CAST(REPLACE(Salary,'0','') AS NUMERIC)))
FROM EMPLOYEES
                                 
