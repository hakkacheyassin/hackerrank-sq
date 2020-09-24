SELECT N,
    CASE
        WHEN P IS NULL THEN 'Root'
        WHEN(
            SELECT COUNT(*)
            FROM BST
            WHERE P = X.N
            ) > 0 THEN 'Inner'
        ELSE 'Leaf'
    END
FROM BST AS X
ORDER BY N


/*  hakkache yassin */