-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- d
-- ORDER inGROUP BY the film_i descending order
-- LIMIT
SELECT
    title,
    COUNT (rental_date)
FROM
    film
    INNER JOIN inventory ON film.film_id = inventory.film_id
    INNER JOIN rental ON rental.inventory_id = inventory.inventory_id
GROUP BY
    film.film_id
ORDER BY
    count DESC
LIMIT
    10