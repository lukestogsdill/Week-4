-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg'
-- Answer: 2


-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 4794


-- 3. What film does the store have the most of? (search in inventory table)
SELECT COUNT(inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id) DESC;
-- Answer: Many films have the amount of 8.



-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name LIKE 'William';
-- Answer: None (only Williams, and Williamson)


-- 5. What store employee (get the id) sold the most rentals?
SELECT COUNT(rental_id), staff_id
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;
-- Answer: staff#1 sold 36 more than staff #2


-- 6. How many different distinct names are there?
SELECT COUNT(DISTINCT first_name) AS distinct_first_names, COUNT(last_name) AS distinct_last_names
FROM customer;
SELECT COUNT(DISTINCT first_name) AS distinct_first_names, COUNT(last_name) AS distinct_last_names
FROM actor;
SELECT COUNT(DISTINCT first_name) AS distinct_first_names, COUNT(last_name) AS distinct_last_names
FROM staff;
-- Answer: 
    --599 distinct names in customer table
    --238 distinct names in actor table 
    --2 distinct names in staff table
        

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Answer: film id 508 has 15 actors


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name),store_id
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1
GROUP BY store_id;
-- Answer: Store 1 had 13 customers with their last name ending 'es'


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(DISTINCT amount), customer_id, rental_id
FROM payment
WHERE rental_id > 250 AND customer_id BETWEEN 380 AND 430
GROUP BY customer_id, rental_id;
-- Answer: 1257

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT rating) AS distinct_ratings
FROM film;
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;
-- Answer: 5 different ratings, and PG-13 has the most movies