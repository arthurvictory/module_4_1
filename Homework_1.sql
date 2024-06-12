-- Question 1 --

SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- Question 2 --

SELECT COUNT(*)
FROM payment
WHERE amount
BETWEEN 3.99 AND 5.99;

-- Question 3 --

SELECT film_id, COUNT(*) AS inventory_count
FROM inventory
GROUP BY film_id
ORDER BY inventory_count DESC;

-- Question 4 --

SELECT first_name, last_name
FROM customer
WHERE last_name = 'Williams';

-- Question 5 --

SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count DESC;

-- Question 6 --

SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7 --

SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;

-- Question 8 --

SELECT last_name
FROM customer
WHERE last_name 
LIKE '%es' AND store_id = 1;

-- Question 9 --

SELECT amount, COUNT(*) AS rental_id
FROM payment
WHERE rental_id BETWEEN 380 AND 430
GROUP BY amount, rental_id
HAVING rental_id > 250;

-- Question 10 --
SELECT rating, COUNT(*) as movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC