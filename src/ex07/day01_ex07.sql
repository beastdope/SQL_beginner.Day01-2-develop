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
    person_order
ORDER BY
    order_date ASC,
    person_information ASC;