-- 1. List all customers who live in Texas (use JOINs)
SELECT first_name, last_name, district
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

-- 2. Get all payments above $6.99 with the Customer's Full Name
SELECT first_name, last_name, SUM(amount)
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
GROUP BY first_name, last_name
HAVING SUM(amount) > 6.99;

-- 3. Show all customers names who have made payments over $175(use subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 175
);

-- 4. List all customers that live in Nepal (use the city table)
SELECT first_name, last_name
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

-- 5. Which staff member had the most transactions?
SELECT first_name, last_name, COUNT(amount)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(amount) DESC
LIMIT 1;

-- 6. How many movies of each rating are there?
SELECT rating, COUNT(title)
FROM film
GROUP BY rating;

-- 7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount > 6.99
);

-- 8. How many free rentals did out stores give away?
SELECT store_id, rental_id
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount = 0;
-- not sure if this was a trick question, but no store gave away rentals.