SELECT Doctor, Professor, Singer, Actor
FROM 
    (
        SELECT Names, RowNo, Occup
        FROM 
            (
                SELECT Name AS Names, ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS RowNo, Occupation AS Occup
                FROM OCCUPATIONS
            ) AS t1
    ) AS t2
    PIVOT
    (
        MIN(Names)
        FOR Occup IN (Doctor, Professor, Singer, Actor)
    ) AS PivotTable
/*  hakkache yassin */