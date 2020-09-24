WITH X (ID, Task_ID, Start_Date, End_Date) AS
    (
        SELECT ROW_NUMBER() OVER (ORDER BY P1.Start_Date), P1.Task_ID, P1.Start_Date, P1.End_Date
        FROM Projects AS P1
        LEFT JOIN Projects P2
        ON P1.End_Date = P2.Start_Date
        WHERE P2.Task_ID IS NULL
        UNION ALL
        SELECT X2.ID, P.Task_ID, P.Start_Date, P.End_Date
        FROM Projects AS P
        INNER JOIN X AS X2
        ON P.End_Date = X2.Start_Date
   )
SELECT MIN(Start_Date), MAX(End_Date)
FROM X
GROUP BY ID
ORDER BY DATEDIFF(day, MIN(Start_Date), MAX(End_Date)) ASC, MIN(Start_Date)


/*  hakkache yassin */