Select
    person_id, concat(name, '(', substr(profession, 1, 1), ")") AS name
From
    Person
ORDER BY
    person_id DESC