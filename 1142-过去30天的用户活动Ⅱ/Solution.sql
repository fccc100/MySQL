SELECT
    IFNULL(ROUND(AVG(c.cnt), 2), 0) AS average_sessions_per_user
FROM
    (
      SELECT
        COUNT(DISTINCT session_id) AS cnt
      FROM
        activity
      WHERE
        DATEDIFF('2019-07-27', activity_date) < 30
      GROUP BY
        user_id
    ) AS c