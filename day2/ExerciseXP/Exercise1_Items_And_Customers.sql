TRUNCATE TABLE items RESTART IDENTITY;
TRUNCATE TABLE customers RESTART IDENTITY;

CREATE TABLE IF NOT EXISTS items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100),
    price NUMERIC
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

INSERT INTO items (item_name, price) VALUES
('Small Desk', 100),
('Large Desk', 300),
('Fan', 80);

-- Добавление клиентов в таблицу customers
INSERT INTO customers (first_name, last_name) VALUES
('Greg', 'Jones'),
('Sandra', 'Jones'),
('Scott', 'Scott'),
('Trevor', 'Green'),
('Melanie', 'Johnson');

-- Все предметы
SELECT * FROM items;

-- Все предметы с ценой выше 80 (80 не включено)
SELECT * FROM items WHERE price > 80;

-- Все предметы с ценой ниже или равной 300
SELECT * FROM items WHERE price <= 300;

-- Все клиенты с фамилией 'Smith'
SELECT * FROM customers WHERE last_name = 'Smith';

-- Все клиенты с фамилией 'Jones'
SELECT * FROM customers WHERE last_name = 'Jones';

-- Все клиенты, у которых имя не 'Scott'
SELECT * FROM customers WHERE first_name != 'Scott';


