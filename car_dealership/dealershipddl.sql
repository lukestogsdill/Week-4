CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_make VARCHAR(100),
    car_model VARCHAR(100),
    car_year INTEGER
);

CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE cars_serviced(
    cars_serviced_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    serial_number VARCHAR(100),
    license_plate VARCHAR(100),
    mileage INTEGER,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE service_tickets(
    service_id SERIAL PRIMARY KEY,
    service_date VARCHAR(100),
    amount FLOAT(9),
    service_description VARCHAR(1000),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    cars_serviced_id INTEGER,
    FOREIGN KEY (cars_serviced_id) REFERENCES cars_serviced(cars_serviced_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    new_car BOOLEAN,
    amount FLOAT(9),
    quantity INTEGER,
    serial_number VARCHAR(100),
    license_plate VARCHAR(100),
    mileage INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    salesperson_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    payment_date VARCHAR(100),
    salesperson_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    inventory_id INTEGER,
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

ALTER TABLE invoice
ADD COLUMN amount FLOAT(9);

ALTER TABLE inventory
DROP COLUMN quantity;

ALTER TABLE cars_serviced
DROP COLUMN quantity;