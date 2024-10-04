SELECT
    order_date,
    (
        SELECT
            CONCAT(name, ' ', '(', 'age:', age, ')')
        FROM
            person
        WHERE
            person.id = person_order.person_id
    ) AS person_information
FROM
    person_order NATURAL
    JOIN (
        SELECT
            person.id AS person_id,
            name,
            age
        FROM
            person
    ) AS person_name
ORDER BY
    order_date ASC,
    person_information ASC;