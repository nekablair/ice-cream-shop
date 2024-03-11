DROP TABLE IF EXISTS boxes_of_cones;

CREATE TABLE boxes_of_cones (
    cone_id SERIAL PRIMARY KEY,
    waffle_cone INT,
    sugar_cone INT,
    cake_cone INT,
    gluten_free INT
);

INSERT INTO boxes_of_cones (waffle_cone, sugar_cone, cake_cone, gluten_free)
VALUES (3, 2, 6, 1);

DROP TABLE IF EXISTS buckets_of_ice_cream;

CREATE TABLE buckets_of_ice_cream (
    cone_id SERIAL PRIMARY KEY,
    vanilla INT,
    chocolate INT,
    mint INT,
    strawberry INT
);

INSERT INTO buckets_of_ice_cream (vanilla, chocolate, mint, strawberry)
VALUES (5, 2, 7, 8);

DROP TABLE IF EXISTS sales_of_ice_cream_cones;

CREATE TABLE sales_of_ice_cream_cones (
    transaction_id SERIAL PRIMARY KEY,
    sales_chocolate DECIMAL(6,2),--
    sales_strawberry DECIMAL(6,2),
    sales_vanilla DECIMAL(6,2),
    sales_mint DECIMAL(6,2)
);

INSERT INTO sales_of_ice_cream_cones (sales_chocolate, sales_strawberry, sales_vanilla, sales_mint)
VALUES (300.99, 250.00, 299.99, 102.00);--total sales each day

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    salary DECIMAL(8,2),
    date_timestamps TIMESTAMP
);

INSERT INTO employees (employee_name, salary, date_timestamps)
VALUES ('john smith', 24000, '2024-03-07 15:52:00' );

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email TEXT UNIQUE
    CHECK(customer_email LIKE '%@%.com') --wildcard % to check for email constraints
);

-- \COPY games FROM 'path/to/data/games.csv' WITH CSV HEADER;


INSERT INTO customers (customer_name, customer_email)
VALUES ('john_doe', 'john@example.com');
