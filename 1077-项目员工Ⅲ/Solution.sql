SELECT
    p.project_id,
    e.employee_id
FROM
    Project AS p
JOIN
    Employee AS e
ON
    p.employee_id = e.employee_id
WHERE
    (p.project_id, e.experience_years)
IN
    (
        SELECT
            p.project_id,
            MAX(e.experience_years)
        FROM
            Project AS p
        JOIN
            Employee AS e
        ON
            p.employee_id = e.employee_id
        GROUP BY
            p.project_id
    );
