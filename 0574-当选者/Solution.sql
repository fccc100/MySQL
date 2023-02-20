SELECT
    name
FROM
    Candidate c
JOIN
    Vote v
ON
    v.candidateId = c.id
GROUP BY
    candidateId
ORDER BY
    COUNT(v.candidateId) DESC
LIMIT 1;