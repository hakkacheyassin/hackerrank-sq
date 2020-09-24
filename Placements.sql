SELECT S.Name
FROM Students AS S
INNER JOIN Friends AS F
ON S.ID = F.ID
INNER JOIN Packages AS P1
ON S.ID = P1.ID
INNER JOIN Packages AS P2
ON P2.ID = F.Friend_ID
WHERE P2.Salary > P1.Salary
ORDER BY P2.Salary


