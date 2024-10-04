SELECT
    person.name AS person_name,
    menu.pizza_name AS pizza_name,
    pizzeria.name AS pizzeria_name
FROM
    person FULL
    JOIN person_order ON person.id = person_order.person_id FULL
    JOIN menu ON menu.id = person_order.menu_id FULL
    JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE
    person.name IS NOT NULL
    AND menu.pizza_name IS NOT NULL
    AND pizzeria.name IS NOT NULL
ORDER BY
    person.name ASC;