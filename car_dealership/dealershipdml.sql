INSERT INTO salesperson(
    first_name,
    last_name,
    email,
    address,
    phone_number
) VALUES('Luke', 'Stogsdill', 'lukestogsdill@gmail.com', '111 main st', '555-555-1111'),
('Charlie', 'Saleh', 'charliesaleh@gmail.com', '112 main st', '555-555-1112');

INSERT INTO customer(
    first_name,
    last_name,
    email,
    address,
    phone_number
) VALUES('Shmoe', 'Joe', 'shmoejoe@gmail.com', '113 main st', '555-555-1113'),
('Willy', 'Wonka', 'willywonka@gmail.com', '114 main st', '555-555-1114');

INSERT INTO mechanic(
    first_name,
    last_name,
    email,
    address,
    phone_number
) VALUES('Johnny', 'Bravo', 'johnnybravo@gmail.com', '115 main st', '555-555-1115'),
('Papa', 'John', 'papajohn@papajohn.com', '116 main st', '555-555-1116');

INSERT INTO invoice(
    payment_date,
    amount
) VALUES('2/27/2023',10000),('2/26/2023',20000);

INSERT INTO inventory(
    new_car,
    amount,
    serial_number,
    license_plate,
    mileage
) VALUES(TRUE, 10000, 12345678, 'GRV-1234', 0),
(FALSE, 20000, 12345677, 'QWE-1234', 34000);

INSERT INTO service_tickets(
    service_date,
    amount,
    service_description
) VALUES('2/27/2023',1000.99,'changed muffler'),
('2/26/2023',150.99,'oil change & tire rotation');

INSERT INTO car(
    car_make,
    car_model,
    car_year
) VALUES('MAZDA', '3', 2004),
('MAZDA', 'MIATA', 2002),
('HONDA', 'ACCORD', 2011);

INSERT INTO cars_serviced(
    serial_number,
    license_plate,
    mileage
) VALUES('LASDFJ-19233','LSDF-2374',50555),
('LFKF-AKFJK23','ERIG-2934',144445);

SELECT *
FROM cars_serviced;