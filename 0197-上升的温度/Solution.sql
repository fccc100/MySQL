SELECT
    a.id
FROM
    Weather a
CROSS JOIN
    Weather b
ON
    DATEDIFF(a.recordDate, b.recordDate) = 1
WHERE
    a.Temperature > b.Temperature;