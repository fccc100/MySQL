SELECT
    project_id
FROM
    Project
GROUP BY
    project_id
HAVING
    COUNT(employee_id) >= 
    ALL(
        SELECT
            COUNT(employee_id)
        FROM
            Project
        GROUP BY
            project_id
    );