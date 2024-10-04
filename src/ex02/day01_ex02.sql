SELECT
    sorted_name
FROM
    (
        SELECT
            pizza_name AS sorted_name
        FROM
            menu
        UNION
        SELECT
            pizza_name AS sorted_name
        FROM
            menu
    ) AS sorted
ORDER BY
    sorted_name DESC;