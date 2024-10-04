SELECT
    object_name
FROM
    (
        SELECT
            person.name AS object_name
        FROM
            person
        ORDER BY
            person.name
    ) AS sorted_name
UNION
ALL
SELECT
    object_name
FROM
    (
        SELECT
            pizza_name AS object_name
        FROM
            menu
        ORDER BY
            pizza_name
    ) AS sorted_pizza;