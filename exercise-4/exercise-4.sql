-- the average film length by category
-- include the category name and avg length
SELECT
    name,
    AVG(length)
FROM
    film
    INNER JOIN film_category ON film.film_id = film_category.film_id
    INNER JOIN category ON film_category.category_id = category.category_id
GROUP BY
    category.name