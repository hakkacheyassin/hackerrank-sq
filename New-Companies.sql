SELECT E.company_code, C.founder, COUNT(DISTINCT E.lead_manager_code), COUNT(DISTINCT E.senior_manager_code), COUNT(DISTINCT E.manager_code), COUNT(DISTINCT E.employee_code)
FROM Employee AS E
INNER JOIN Company AS C
ON C.company_code = E.company_code
GROUP BY E.company_code, C.founder
ORDER BY E.company_code


