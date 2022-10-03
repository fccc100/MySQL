SELECT
    name
FROM
    customer
WHERE
    IFNULL(referee_id, -1) <> 2;