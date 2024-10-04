SELECT
    id
FROM
    pizzeria
WHERE
    id NOT IN (
        SELECT
            pizzeria_id
        FROM
            person_visits
    );

SELECT
    id
FROM
    pizzeria
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            person_vi sits
        WHERE
            person_visits.pizzeria_id = pizzeria.id
    );