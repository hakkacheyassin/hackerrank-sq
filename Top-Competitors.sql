SELECT S.hacker_id, H.name
FROM Submissions AS S
JOIN Hackers AS H
ON H.hacker_id = S.hacker_id
JOIN Challenges AS C
ON C.challenge_id = S.challenge_id
JOIN Difficulty AS D
ON D.difficulty_level = C.difficulty_level
WHERE S.score = D.score
GROUP BY S.hacker_id, H.name
HAVING COUNT(*)>1
ORDER BY COUNT(*) DESC, S.hacker_id ASC


