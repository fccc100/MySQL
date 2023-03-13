SELECT
  s.user_id AS user_id, SUM(s.quantity * p.price) AS spending
FROM
  Sales s
JOIN
  Product p
ON
  s.product_id = p.product_id
GROUP BY
  s.user_id
ORDER BY
  spending DESC, user_id ASC