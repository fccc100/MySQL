SELECT
  DISTINCT c.title AS title
FROM
  TVProgram t
JOIN
  Content c
ON
  t.content_id = c.content_id
WHERE
  t.program_date BETWEEN '2020-06-01 00:00' AND '2020-06-30 23:59' AND c.kids_content = 'Y' AND c.content_type = 'Movies'