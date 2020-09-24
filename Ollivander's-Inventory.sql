SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands AS W
INNER JOIN Wands_Property AS WP
ON W.code = WP.code
WHERE WP.is_evil = 0 AND
    W.coins_needed = (SELECT MIN(coins_needed)
                     FROM Wands Wan
                     JOIN Wands_Property WanProp
                     ON Wan.code = WanProp.code
                     WHERE Wan.power = W.power AND 
                      WanProp.age = WP.age)
ORDER BY W.power DESC, WP.age DESC


