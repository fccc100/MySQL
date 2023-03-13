SELECT
  s.product_id AS product_id, p.product_name AS product_name
FROM
  Product p
JOIN
  Sales s
ON
  p.product_id = s.product_id
GROUP BY
  s.product_id
HAVING
  SUM(s.sale_date BETWEEN '2019-01-01' AND '2019-03-31') >= 1 AND SUM(s.sale_date < '2019-01-01') < 1 AND SUM(s.sale_date > '2019-03-31') < 1
