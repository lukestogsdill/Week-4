INSERT INTO customer(
    first_name,
    last_name,
    customer_address,
    phone_num
) VALUES (
    'luke',
    'stogsdill',
    '123 main st',
    '555-555-5555'
),(
    'anifa',
    'chishungu',
    '124 main st',
    '555-555-5550'
),(
    'cameron',
    'lee',
    '125 main st',
    '555-555-5551'
);

INSERT INTO consession(
    quantity,
    consession_type,
    price
) VALUES (
    1000000,
    'popcorn',
    10.99
),(
    100,
    'candies',
    3.99
);

INSERT INTO theater(
    seat_num
) VALUES (
    1
),(
    2
),(
    3
),(
    4
),(
    5
);

INSERT INTO movie(
    genre,
    rating,
    movie_length,
    movie_name
) VALUES (
    'action',
    'PG-13',
    '10 Hours',
    'shrek vs kingkong'
),(
    'romantic comedy',
    'r',
    '10 minutes',
    'shrek vs donkey'
),(
    'history',
    'PG',
    '2 hours',
    'shrek vs shrek'
);