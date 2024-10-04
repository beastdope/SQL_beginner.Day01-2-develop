SELECT
    order_date,
    (
        SELECT
            name
        FROM
            person
        WHERE
            person.id = person_order.person_id
    ) AS name
FROM
    person_order
INTERSECT
SELECT
    visit_date,
    (
        SELECT
            name
        FROM
            person
        WHERE
            person.id = person_visits.person_id
    ) AS name
FROM
    person_visits
ORDER BY
    order_date ASC,
    name DESC;