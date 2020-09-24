SELECT H.hacker_id, H.name, SUM(newTable.score)
FROM (
    SELECT hacker_id, challenge_id, MAX(score) AS score FROM Submissions
    GROUP BY hacker_id, challenge_id 
    ) AS newTable 
JOIN Hackers AS H 
ON newTable.hacker_id = H.hacker_id
GROUP BY H.hacker_id, H.name
HAVING SUM(score) > 0
ORDER BY SUM(score) DESC, H.hacker_id 


/*  hakkache yassin */