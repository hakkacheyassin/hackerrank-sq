SELECT 
    CASE
        WHEN S.Marks < 70 THEN NULL
        ELSE S.Name
    END,
    G.Grade, S.Marks
FROM Students AS S, Grades AS G
WHERE S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, S.Name


