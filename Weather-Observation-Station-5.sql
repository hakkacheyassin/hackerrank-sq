SELECT CITY, LEN(CITY)
FROM STATION
WHERE CITY = (
    SELECT MIN(CITY)
    FROM STATION
    WHERE LEN(CITY) = (
        SELECT MIN(LEN(CITY))
        FROM STATION
                      )
                  )
OR CITY = (
    SELECT MIN(CITY)
    FROM STATION
    WHERE LEN(CITY) = (
        SELECT MAX(LEN(CITY))
        FROM STATION
                      )
                  )
/*  hakkache yassin mdb */