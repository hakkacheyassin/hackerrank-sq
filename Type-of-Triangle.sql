SELECT 
    CASE
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A + B <= C THEN 'Not A Triangle'
        WHEN A + C <= B THEN 'Not A Triangle'
        WHEN B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B != C THEN 'Isosceles'
        WHEN A = C AND C != B THEN 'Isosceles'
        WHEN B = C AND C != A THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES
