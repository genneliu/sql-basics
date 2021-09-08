--step 3

--create table 
CREATE TABLE orders (
    id serial primary key,
    person_id int,
    product_name varchar(20),
    product_price int,
    quantity int,
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Pokeball', 200 , 10),
(2, 'Greatball', 600, 5),
(3, 'Ultraball', 1200, 2),
(2, 'Pokeball', 200, 10),
(4, 'Safariball', 1000, 30);

--select all records
SELECT * FROM orders;

--calculate total number of products ordered
SELECT SUM(quantity)
FROM orders;

--calculate total order price
SELECT product_name, product_price*quantity AS total_price
FROM orders;

--double check
--calculate total order price by single person id
SELECT person_id, product_price*quantity AS total_price
FROM orders
GROUP BY person_id;