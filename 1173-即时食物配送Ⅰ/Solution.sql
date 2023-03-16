SELECT
  ROUND(
    (SELECT COUNT(*) FROM delivery WHERE order_date = customer_pref_delivery_date)
    /
    (SELECT COUNT(*) FROM delivery)
    ,
    4
  ) * 100 AS immediate_percentage 