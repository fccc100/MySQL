SELECT
  extra AS report_reason, COUNT(DISTINCT post_id) AS report_count
FROM
  actions
WHERE
  action_date = '2019-07-04' AND extra IS NOT NULL AND action = 'report'
GROUP BY
  extra