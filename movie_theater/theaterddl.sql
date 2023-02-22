CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_address VARCHAR(100),
    phone_num VARCHAR(15)
);

CREATE TABLE consession(
    consession_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    consession_type VARCHAR(100)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    genre VARCHAR(50),
    rating VARCHAR(50),
    movie_length VARCHAR(50)
);

CREATE TABLE theater(
    theater_id SERIAL PRIMARY KEY,
    seat_num INTEGER,
    seat_taken BOOLEAN
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    amount INTEGER,
    theater_id INTEGER,
    FOREIGN KEY (theater_id) REFERENCES theater(theater_id),
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE order_info(
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    order_address VARCHAR(100),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    consession_id INTEGER,
    FOREIGN KEY (consession_id) REFERENCES consession(consession_id),
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)
);

-- These additions are not on my picture

ALTER TABLE consession
ADD COLUMN price FLOAT;

ALTER TABLE movie
ADD COLUMN name VARCHAR(100);

ALTER TABLE movie
DROP COLUMN name;

ALTER TABLE movie
ADD COLUMN movie_name VARCHAR(100);
