SELECT
    Name Customers
FROM
    Customers
where Customers.Id not in
(
    SELECT CustomerId from Orders
);
