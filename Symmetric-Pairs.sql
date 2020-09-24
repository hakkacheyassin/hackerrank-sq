SELECT T1.X, T1.Y
FROM Functions AS T1
WHERE T1.X = T1.Y AND
    (SELECT COUNT(*)
    FROM Functions
    WHERE X = T1.X AND
        Y = T1.Y) > 1
UNION
SELECT T1.X, T1.Y
FROM Functions AS T1, Functions AS T2
WHERE T1.X != T1.Y AND
    T1.X = T2.Y AND
    T1.Y = T2.X AND
    T1.X < T2.X
ORDER BY X
