SELECT
    firstName, lastName, city, state
From
    Person p
LEFT JOIN
    Address a
ON
    p.personId = a.personId
