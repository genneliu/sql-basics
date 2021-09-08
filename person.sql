-- step 2 
CREATE TABLE person (
    id serial primary key,
    name varchar(20),
    age int,
    height_cm int,
    city varchar(20),
    favorite_color varchar(15)
);

-- add people
INSERT INTO person (name, age, height_cm, city, favorite_color)
VALUES ('Jacob', 22, 185, 'Ottawa', 'Orange'),
('Dianna', 28, 162, 'Atlanta', 'Red'),
('Ann', 28, 168, 'DC', 'Purple'),
('Joel', 28, 180, 'San Antonio', 'Blue'),
('Sedrick', 27, 188, 'Lagos', 'Black');

--height ordering
SELECT * FROM person 
ORDER BY height_cm;

SELECT * FROM person
ORDER BY height_cm DESC;

--age ordering
SELECT * FROM person
ORDER BY age DESC;

--select all older than 20
SELECT * FROM person
WHERE age > 20;

--select exactly 18
SELECT * FROM person
WHERE age = 18;

--less than 20 and older than 30
SELECT * FROM person
WHERE age < 20 AND age > 30;

--select all not 27
SELECT * FROM person
WHERE age != 27;

--fav color not red
SELECT * FROM person
WHERE favorite_color != 'Red';

--select not red or blue
SELECT * FROM person
WHERE favorite_color != 'Red' OR favorite_color != 'Blue';

--select where fav color is orange or green
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

--select where favc color is orange, green or blue
SELECT * FROM person
WHERE favorite_color IN ('Green', 'Orange', 'Blue');

--fav color yellow or purple
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');