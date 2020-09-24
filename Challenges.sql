WITH newTable AS (
    SELECT hacker_id, COUNT(challenge_id) AS totalNumberOfChallenges 
    FROM  Challenges 
    GROUP BY hacker_id)

SELECT H.hacker_id, H.name, N.totalNumberOfChallenges 
FROM Hackers AS H 
INNER JOIN newTable N 
ON H.hacker_id = N.hacker_id
WHERE
        N.totalNumberOfChallenges = (SELECT MAX(totalNumberOfChallenges) 
                      FROM newTable)
      OR
        N.totalNumberOfChallenges NOT IN (
            SELECT totalNumberOfChallenges 
            FROM newTable AS T
            WHERE H.hacker_id != T.hacker_id)
ORDER BY N.totalNumberOfChallenges DESC, H.hacker_id

/*  hakkache yassin */