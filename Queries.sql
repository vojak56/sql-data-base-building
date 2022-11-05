SELECT actor.actor_id, actor.first_name, actor.last_name
FROM actor
INNER JOIN Info
ON actor.actor_id=film.actor_actor_id;

SELECT COUNT(film_id), title
FROM film
GROUP BY title;

SELECT * FROM film
ORDER BY film_id ASC;

SELECT * FROM category
ORDER BY category_id DESC;

SELECT * FROM film.rental_rate
WHERE film.rental_rate > 10;

SELECT * FROM film.rental_rate
WHERE film.rental_rate BETWEEN 50 AND 60;

SELECT language.name  
WHERE name = ANY
 (SELECT language.language_id
  WHERE language_id > 3);
 
SELECT * FROM film
WHERE rental_rate NOT BETWEEN 10 AND 20;
 
SELECT COUNT(film_id), title
FROM film
GROUP BY title
HAVING COUNT(title) = ' ';
SELECT * FROM film
WHERE title NOT IN ('Germany', 'France');
 

 
 


